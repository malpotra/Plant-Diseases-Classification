import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

enum AppState { NOT_DOWNLOADED, DOWNLOADING, FINISHED_DOWNLOADING }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String key = 'dcd1c29faf34a2c252bd5bf3dad87186';
  late WeatherFactory ws;
  List <Weather> _data =[];
  AppState _state = AppState.NOT_DOWNLOADED;
  double? lat,lon;



  @override
  void getPosition() async{
    Position position = await Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    lat = position.latitude;
    lon = position.longitude;
  }

  void initState(){
    super.initState();
    ws = new WeatherFactory(key);
  }

  /*void queryForecast() async {
    FocusScope.of(context).requestFocus(FocusNode());

    setState(() {
      _state = AppState.DOWNLOADING;
    });

    List<Weather> forecasts = await ws.fiveDayForecastByLocation(lat!, lon!);
    setState(() {
      _data = forecasts;
      _state = AppState.FINISHED_DOWNLOADING;
    });
  }*/

  void queryWeather() async {
    FocusScope.of(context).requestFocus(FocusNode());

    setState(() {
      _state = AppState.DOWNLOADING;
    });
    getPosition();
    Weather weather = await ws.currentWeatherByLocation(lat!, lon!);
    setState(() {
      _data = [weather];
      _state = AppState.FINISHED_DOWNLOADING;
      print(_data[0].areaName);
    });
  }

  Widget contentFinishedDownload() {
    return Container(
        margin: EdgeInsets.fromLTRB(20,25,20,25),
        child: Padding(padding: EdgeInsets.all(10),
            child: Card(
                color: Colors.lightGreen.shade50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child:
                Padding(
                  padding: EdgeInsets.all(5),
                  child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            child: Card(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(3),
                                    child: Text(_data[0].temperature.toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(3),
                                    child: Text(_data[0].weatherDescription.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                  ),
                                  Padding(padding: EdgeInsets.all(3),
                                    child: Text(_data[0].areaName.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                  )
                                ],
                              ),
                            ),
                          ),


                        ],),
                          Divider(height: 1,thickness: 2,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 300,
                                child: Card(
                                    margin: EdgeInsets.all(5),

                                    child:Column(
                                            children:[
                                                Padding(padding: EdgeInsets.all(3),
                                                child: Text('Humidity '+_data[0].humidity.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                                ),
                                                  Padding(padding: EdgeInsets.all(3),
                                                    child: Text('Cloudiness ' + _data[0].cloudiness.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                                  ),
                                                  Padding(padding: EdgeInsets.all(3),
                                                    child: Text('Rain Last Hour (mm) '+_data[0].rainLastHour.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                                  )
                                                  ])
                                                  ),)
                              ]
                          ),
                          Divider(height: 1,thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 300,
                                child:
                              Card(
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.all(3),
                                      child: Text('Wind Speed (m) '+_data[0].windSpeed.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                    ),
                                    Padding(padding: EdgeInsets.all(3),
                                      child: Text('Wind Degree ' + _data[0].windDegree.toString(), style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
                                    ),
                                  ],
                                ),
                              ),)
                            ],
                          ),
                        ],
                      ),
                      )
                ))
    );
  }
  Widget contentDownloading() {
    return Container(
        margin: EdgeInsets.fromLTRB(20,25,20,25),
      child:Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Padding(padding: EdgeInsets.all(5),
        child:
          Text(
            'Fetching Weather...',
            style: TextStyle(fontSize: 20),
          ),)
        ,
        Padding (
          padding: EdgeInsets.fromLTRB(5,0,5,10),
            child:Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(child: CircularProgressIndicator(strokeWidth: 5)))
      
        )
      ]),
    ));
  }

  Widget contentNotDownloaded() {
    return Container(

      margin: EdgeInsets.fromLTRB(20,25,20,25),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(5,30,5,30),
          child:
          Text('Press the button to download the Weather forecast',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      ),
      )
    );
  }

  Widget _resultView() => _state == AppState.FINISHED_DOWNLOADING
      ? contentFinishedDownload()
      : _state == AppState.DOWNLOADING
      ? contentDownloading()
      : contentNotDownloaded();

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: TextButton(
            child: Text(
              'Fetch weather',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: queryWeather,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
          children: [
            _resultView(),
            _buttons(),
          ],
        ),
      ),
    ));
  }
}
