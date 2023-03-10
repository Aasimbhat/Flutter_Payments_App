import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {

  Future<List<dynamic>> getUsers()async{
   var info=rootBundle.loadString("json/data.json");
   List<dynamic> list =jsonDecode(await info);
   return Future.delayed(Duration(seconds: 1),
      ()=> list.map((e) => e).toList()

   );
  }
}