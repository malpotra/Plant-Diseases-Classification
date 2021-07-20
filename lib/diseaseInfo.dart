import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_tflite/diseases.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
final disease = Disease();

class DiseaseInfo extends StatelessWidget {
  const DiseaseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        child:Container(
        color: Colors.blueGrey.shade100,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                    borderRadius: BorderRadius.circular(20),
                    title: Text('Apple Scab'),
                    subtitle: Text('Know more about this disease'),
                    children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Apple___Apple_scab']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                                ),
                              )
                            )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                          color: Colors.yellow.shade50,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child:Center(
                            child: Column(
                              children:[
                                Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                Padding (
                                    padding: EdgeInsets.all(10),
                                    child:Text(disease.diseases['Apple___Apple_scab']![1],textAlign: TextAlign.justify,)
                                ),
                              ],
                            ),
                          )
                        )
                      ),
                      //ListTile(tileColor: Colors.lightGreen,),

                    ]
                  ),),

                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Apple Black Rot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Apple___Black_rot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Apple___Black_rot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Cedar Apple Rust'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Apple___Cedar_apple_rust']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Apple___Cedar_apple_rust']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Cherry Powdery Mildew'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Cherry_(including_sour)___Powdery_mildew']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Cherry_(including_sour)___Powdery_mildew']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Corn/Maize Cercospora Leaf Spot (Gray Leaf Spot)'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Corn/Maize Common Rust'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Common_rust_']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Common_rust_']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Corn/Maize Northern Leaf Blight'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Northern_Leaf_Blight']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Corn_(maize)___Northern_Leaf_Blight']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Grape Black Rot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Black_rot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Black_rot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Grape (Esca) Black Measles'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Esca_(Black_Measles)']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Esca_(Black_Measles)']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Grape Leaf Blight (Isariopsis Leaf Spot)'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Leaf_blight_(Isariopsis_Leaf_Spot)']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Grape___Leaf_blight_(Isariopsis_Leaf_Spot)']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Orange Haunglongbing (Citrus Greening)'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Orange___Haunglongbing_(Citrus_greening)']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Orange___Haunglongbing_(Citrus_greening)']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Peach Bacterial Spot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Peach___Bacterial_spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Peach___Bacterial_spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Bell Pepper Bacterial Spot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Pepper,_bell___Bacterial_spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Pepper,_bell___Bacterial_spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Potato Early Blight'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Potato___Early_blight']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Potato___Early_blight']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Potato Late Blight'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Potato___Late_blight']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Potato___Late_blight']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Squash Powdery Mildew'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Squash___Powdery_mildew']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Squash___Powdery_mildew']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Strawberry Leaf Scorch'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Strawberry___Leaf_scorch']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Strawberry___Leaf_scorch']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Bacterial Spot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Bacterial_spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Bacterial_spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Early Blight'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Early_blight']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Early_blight']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Late Blight'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Late_blight']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Late_blight']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Leaf Mold'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Leaf_Mold']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Leaf_Mold']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Septoria Leaf Spot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Septoria_leaf_spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Septoria_leaf_spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Spider Mites (Two-spotted spider mite)'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Spider_mites Two-spotted_spider_mite']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Spider_mites Two-spotted_spider_mite']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Target Spot'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Target_Spot']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Target_Spot']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Yellow Leaf Curl Virus'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Tomato_Yellow_Leaf_Curl_Virus']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Tomato_Yellow_Leaf_Curl_Virus']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
                Padding(
                  padding: EdgeInsets.fromLTRB(5,3,5,3),
                  child: ExpansionTileCard(
                      borderRadius: BorderRadius.circular(20),
                      title: Text('Tomato Mosaic Virus'),
                      subtitle: Text('Know more about this disease'),
                      children: <Widget>[
                        Divider(
                          thickness: 3.0,
                          height: 1.0,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.orange.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Disease',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Tomato_mosaic_virus']![0],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(5,5,5,5),child: Card(
                            color: Colors.yellow.shade50,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child:Center(
                              child: Column(
                                children:[
                                  Text('Remedies',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                                  Padding (
                                      padding: EdgeInsets.all(10),
                                      child:Text(disease.diseases['Tomato___Tomato_mosaic_virus']![1],textAlign: TextAlign.justify,)
                                  ),
                                ],
                              ),
                            )
                        )
                        ),
                        //ListTile(tileColor: Colors.lightGreen,),
                      ]
                  ),),
            ],
          ),
        )
      ),
    )
    );
  }
}
