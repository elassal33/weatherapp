import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/waether%20cubits/weathercubit.dart';
import 'package:weatherapp/cubits/waether%20cubits/weatherstates.dart';
import 'package:weatherapp/home.dart';
import 'package:weatherapp/http.dart';
import 'package:weatherapp/result.dart';
import 'package:weatherapp/search.dart';

void main() {
  //print(await gethttp('London'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => weathercubit(Noweather()),
      child: Builder(builder: (context) {
        return BlocBuilder<weathercubit,Weatherstate>(
          builder: (context, state) {
            return MaterialApp(
                theme: ThemeData(
                    primarySwatch: getWeatherColor(
                        BlocProvider.of<weathercubit>(context).ct?.con)),
                home: homep());
          },
        );
      }),
    );
  }
}

/*Future  gethttp(String name )async{

 Dio dio=Dio();
Response res= await dio.get('http://api.weatherapi.com/v1/forecast.json?key=%206f0a3fdf3f644e858af95613241904%20&q=$name&days=1&aqi=no&alerts=no');
  return res;
 
}*/

 getWeatherColor(String? condition) {
  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.orange; // Sunny or Clear
    case "Partly cloudy":
      return Colors.yellow; // Partly cloudy
    case "Cloudy":
      return Colors.grey; // Cloudy
    case "Overcast":
      return Colors.blueGrey; // Overcast
    case "Mist":
      return Colors.lightBlue; // Mist
    case "Patchy rain possible":
    case "Patchy light rain":
    case "Light rain":
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Light rain shower":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.blue; // Various rain conditions
    case "Patchy snow possible":
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.grey; // Various snow conditions
    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
      return Colors.lightBlue; // Various sleet conditions
    case "Patchy freezing drizzle possible":
    case "Freezing drizzle":
    case "Heavy freezing drizzle":
    case "Light freezing rain":
    case "Moderate or heavy freezing rain":
      return Colors.cyan; // Freezing drizzle/rain
    case "Thundery outbreaks possible":
      return Colors.deepPurple; // Thundery outbreaks
    case "Blowing snow":
    case "Blizzard":
      return Colors.lightBlue; // Blowing snow or Blizzard
    case "Fog":
    case "Freezing fog":
      return Colors.grey; // Fog or Freezing fog
    case "Patchy light drizzle":
    case "Light drizzle":
      return Colors.lightBlue; // Light drizzle
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.grey; // Ice pellets
    default:
      return Colors.blue; // Default color for undefined conditions
  }
}
