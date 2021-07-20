import 'dart:core';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_tflite/classifier.dart';
import 'package:test_tflite/classifier_quant.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_tflite/diseases.dart';

class DiseasePage extends StatefulWidget {
  DiseasePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _DiseasePageState createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
  late Classifier _classifier;
  var logger = Logger();

  File? _image;
  final picker = ImagePicker();

  Image? _imageWidget;

  img.Image? fox;

  Category? category;
  Map temp = new Map(); //will have 2 key-pairs Plant Name - value and Condition - value
  final disease = Disease();//contains information of all diseases and remedies
  String full = "";//will have the entire label of disease
  @override
  void initState() {
    super.initState();
    _classifier = ClassifierQuant();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }
  Future getImageFromCam() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }
  ///function to remove underscores and spaces
  ///labels pattern -> triple underscores separate plant name and its disease
  ///double underscores separate different words
  void conv(String s){
    print('Label of Detection is: $s');
    String name ="",stat ="";
    print(s);
    print(s.length);
    int li = 0;
    bool tripUnder = false;
    bool comma = false;
    for (int i=0;i<s.length;i++){
      if (s[i] == '_' || s[i] == ','){
        if (li != -1){
          if (comma ==true){
            if (tripUnder == false){
              name = s.substring(li,i) + " " + name;
            }
            else{
              stat = s.substring(li,i) + " " + stat;
            }
            comma = false;
          }
          else{
            if (s[i] == ','){
              comma =true;
            }
            if (tripUnder == false){
              name = name + s.substring(li,i);
              if (s[i] == '_' && s[i+1] != '_')
                name = name + " ";
            }
            else{
              stat = stat + s.substring(li,i);
              stat = stat + " ";
            }
          }
          li = -1;
        }
        if (s[i] == '_' && s[i+1] == '_')
          tripUnder =true;
      }
      else{
        if (li == -1)
          li = i;
      }
    }
    stat = stat +s.substring(li,s.length);
    //name = name.toUpperCase();
    //stat = stat.toUpperCase();
    temp["Plant Name"] = name;
    temp["Condition"] = stat;
    full=name+" "+stat;
    print(full.length);
    print(full);
    print(disease.diseases["Apple___Apple_scab"]![0]);

  }

  void _predict() async {
    img.Image imageInput = img.decodeImage(_image!.readAsBytesSync())!;
    var pred = _classifier.predict(imageInput);

    setState(() {
      this.category = pred;
      conv(category!.label);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: _image == null
                  ?
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
                  child:
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.brown.shade200,
                          width: 3,
                        ),
                      ),
                      child:
                      Padding(
                          padding: EdgeInsets.all(5),
                          child:
                          ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              //tileColor: Colors.blueGrey.shade50,
                              leading:Icon(
                                Icons.upload_sharp,
                                size: 30,
                              ),
                              title: Text('Upload an Image for the doctor to check',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)))))
                  : Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
                child: Container(

                  padding: EdgeInsets.all(5),
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.brown.shade50,
                      width: 3,
                    ),
                  ),
                  child: _imageWidget,
                ),
              ),
            ),
            _image == null?
            SizedBox(
              height: 15,
            ):
            Card(
              elevation: 5,
              color: Colors.lightGreen[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: SizedBox (
                width: 350,
                //height: 150,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      children: [
                        Text(
                          category != null ? temp["Plant Name"]: _image==null?'':'Unable to Detect',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          category != null ? temp["Condition"] : _image==null?'':'',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        temp["Condition"] != "healthy" ?
                        SizedBox(
                            width: 275,
                            child: ElevatedButton(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text('Know about the disease',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    letterSpacing: 0.25,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade100),
                                elevation: MaterialStateProperty.all<double>(5.0),
                                shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                minimumSize: MaterialStateProperty.all<Size>(Size(350,50)),
                              ),
                              onPressed: (){
                                showModalBottomSheet(context: context, builder: (context){
                                    return SingleChildScrollView(
                                        physics: ScrollPhysics(parent: ClampingScrollPhysics()),
                                        child:Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Divider(height: 1,thickness: 3,indent: 3,),
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(5,3,5,3),
                                                      child:
                                                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),
                                                          child: Card(
                                                            color: Colors.lightBlue.shade50,
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                            child:Center(
                                                                child: Column(
                                                                children:[
                                                                    ListTile(
                                                                      leading: Icon(Icons.agriculture_outlined),
                                                                      title: Text(temp["Condition"]),
                                                                      subtitle: Text('Know more about the disease'),
                                                                    ),
                                                                    Padding (
                                                                    padding: EdgeInsets.all(10),
                                                                        child:Text(disease.diseases[category!.label]![0],textAlign: TextAlign.justify,)),

                                                                ]
                                                              )
                                                            ),
                                                          ),
                                                          )
                                                          ),
                                                  Padding(
                                                      padding: EdgeInsets.fromLTRB(5,3,5,3),
                                                      child:
                                                      Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),
                                                        child: Card(
                                                          color: Colors.orange.shade50,
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                          child:Center(
                                                              child: Column(
                                                                  children:[
                                                                    ListTile(
                                                                      leading: Icon(Icons.health_and_safety_sharp),
                                                                      title: Text('Controlling the Disease'),
                                                                      subtitle: Text('Know about the possible remedies'),
                                                                    ),
                                                                    Padding (
                                                                        padding: EdgeInsets.all(10),
                                                                        child:Text(disease.diseases[category!.label]![1],textAlign: TextAlign.justify,)),

                                                                  ]
                                                              )
                                                          ),
                                                        ),
                                                      )
                                                  ),
                                                            ],),),),),
                                );

                              });}
                            )
                        ):
                        Icon(Icons.sentiment_satisfied_alt_sharp),
                      ]
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _image == null ? SizedBox(height: 20,): Text('Provide more images',style: TextStyle(color: Colors.white,fontSize: 20,backgroundColor: Colors.black87))
            ,
            //Bottom Sheet
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber.shade300),
                elevation: MaterialStateProperty.all<double>(5.0),
                shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                fixedSize: MaterialStateProperty.all<Size>(Size(350,50)),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child:
                Row(
                  children: [
                    Container(padding: EdgeInsets.fromLTRB(5, 2, 5, 2),child:Icon(Icons.filter)),
                    Container(padding:EdgeInsets.fromLTRB(5,2,5,2),child:Text('Choose from existing pictures',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      letterSpacing: 0.15,
                      fontSize: 15,
                ),)),
                ]
              ),
              ),
              onPressed: getImage,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber.shade300),
                elevation: MaterialStateProperty.all<double>(5.0),
                shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                fixedSize: MaterialStateProperty.all<Size>(Size(350,50)),
              ),
              child:Row(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                    Container(padding: EdgeInsets.fromLTRB(5, 2, 5, 2),child:Icon(Icons.camera_alt_outlined)),
                    Container(padding:EdgeInsets.fromLTRB(5,2,5,2),child:Text('Take a picture',
                    style: TextStyle(
                      letterSpacing: 0.15,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),)),],
              ),
              onPressed: getImageFromCam,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
