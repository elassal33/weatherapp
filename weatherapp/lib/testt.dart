import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/http.dart';
import 'package:weatherapp/result.dart';

/*class testt extends StatelessWidget{
  final String value;
  testt({required this.value});
  Widget build(BuildContext context) {
 return Scaffold(
  body:  FutureBuilder(future: API( Dio()).gethttp(value), builder: (cont,snap){
  if (snap.data==null) {
    return CircularProgressIndicator();
    
  }
      else{
return result(v: snap.data!);
      }
      
    }),
 );
  }

}*/