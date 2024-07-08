class tempmodel {

final double maxtemp_c;
final double mintemp_c;
final double temp;
final String con;
final String date;
final String ? image;
final String name;
final String ? image2;


tempmodel({required this.name,required this.image2,required this.maxtemp_c,required this.mintemp_c ,required this.temp,required this.date, this.image,required this.con,});

factory tempmodel.fromjson(json){
return tempmodel(name: json['location']['name']
  ,maxtemp_c: json['forecast']['forecastday'][0]['day']['maxtemp_c']
, mintemp_c: json['forecast']['forecastday'][0]['day']['mintemp_c']
, temp: json['forecast']['forecastday'][0]['day']['avgtemp_c']
, date: json['current']['last_updated']
, con:  json['current']['condition']['text']
,image: json['current']['condition']['icon'],
image2: 'https:${json['current']['condition']['icon']}'
);



}

}