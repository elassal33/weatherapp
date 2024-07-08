import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/waether%20cubits/weatherstates.dart';
import 'package:weatherapp/http.dart';
import 'package:weatherapp/tempmodel.dart';

class weathercubit extends Cubit<Weatherstate>{
  weathercubit(super.Noweather);

  tempmodel? ct;
  getweather(String city)async{
       ct =await API( Dio()).gethttp(city);
      emit(Weratherfound(t: ct));
  
  }

} 