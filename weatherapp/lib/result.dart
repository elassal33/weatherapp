import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/waether%20cubits/weathercubit.dart';
import 'package:weatherapp/fu.dart';
import 'package:weatherapp/tempmodel.dart';

class result extends StatelessWidget {

  

 
  Widget build(BuildContext context) {
    var v=BlocProvider.of<weathercubit>(context).ct;
    return Container(  decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                getWeatherColor( BlocProvider.of<weathercubit>(context).ct?.con),
               getWeatherColor( BlocProvider.of<weathercubit>(context).ct?.con).withAlpha(100)  ,
              ],
            ),
    ),
      child: Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              v!.name,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
             Text(
              v!.date.toString(),
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network( 
                  v!.image2!,
                ),
                 Text(
                  v!.temp.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                 Column(
                  children: [
                    Text(
                      v!.maxtemp_c.toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      v!.mintemp_c.toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
             Text(
              v!.con,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
