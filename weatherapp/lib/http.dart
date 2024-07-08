import 'package:dio/dio.dart';
import 'package:weatherapp/tempmodel.dart';
tempmodel? t;
class  API {
  Dio dio;

API( this.dio);
Future <tempmodel> gethttp(String name )async{

 
Response res= await dio.get('http://api.weatherapi.com/v1/forecast.json?key=%206f0a3fdf3f644e858af95613241904%20&q=$name&days=1&aqi=no&alerts=no');
  tempmodel t=tempmodel.fromjson(res.data);
 return t;
}



}