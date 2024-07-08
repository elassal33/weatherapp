import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/waether%20cubits/weathercubit.dart';
import 'package:weatherapp/cubits/waether%20cubits/weatherstates.dart';
import 'package:weatherapp/nobody.dart';
import 'package:weatherapp/result.dart';
import 'package:weatherapp/search.dart';

class homep extends StatelessWidget{
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      

appBar: 
AppBar(
  
  title:const Text("weatherapp") ,
  actions: [
    GestureDetector(
  onTap: () {
 Navigator.push(context, MaterialPageRoute(builder: (context){
    return searchv();
  }));
  
  },
      child:const Icon(Icons.search
    
      ),
    )
  ],
),
body: BlocBuilder<weathercubit, Weatherstate>(
  builder: (context, state) {
     if (state is Noweather){
      return nobody();
    }
   else if (state is Weratherfound) {
      return result( );

    }
    
    else{
      return Center(child: Text('error',style: TextStyle(fontSize: 20),));
    }
  },
)
  

      );
  }

}