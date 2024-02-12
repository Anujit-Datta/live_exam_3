import 'package:flutter/material.dart';
import 'package:live_exam_3/ProvidedJsonString.dart';
import 'dart:convert';
import 'WeatherInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WeatherInfo> weatherInfoList=[];
  @override
  void initState() {
    jsonParse();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
            'Weather Info App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: weatherInfoList.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text('City: ${weatherInfoList[index].city!}'),
              subtitle: Text('Temperature: ${weatherInfoList[index].temperature}°C\nCondition: ${weatherInfoList[index].condition}\nHumidity: ${weatherInfoList[index].humidity}\nWind Speed: ${weatherInfoList[index].windSpeed}m/s'),
            ),
          );
        },
      ),
    );
  }

  void jsonParse(){
    List jsonList=jsonDecode(jsonString);
    weatherInfoList.clear();
    for(var json in jsonList){
      weatherInfoList.add(WeatherInfo.fromJson(json));
    }
    print(weatherInfoList);
  }
}
