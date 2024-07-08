

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/waether%20cubits/weathercubit.dart';
import 'package:weatherapp/http.dart';
import 'package:weatherapp/result.dart';
import 'package:weatherapp/tempmodel.dart';
import 'package:weatherapp/testt.dart';

class searchv extends StatelessWidget{
  tempmodel? test;
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:const Text('search'),),
      body: Center(child:TextField(
        
        decoration:const InputDecoration(
        label:Text('search')  , 
        contentPadding: EdgeInsets.fromLTRB(10, 20, 60, 10),
  hintText: "enter country name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),

   onSubmitted: (value) {

 var c=BlocProvider.of<weathercubit>(context);
 c.getweather(value);
 
  Navigator.pop(context, MaterialPageRoute(builder: (context){
    return searchv();
  }));
 
 
  
},


      ) ,),
    );
  }

}