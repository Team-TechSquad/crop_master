import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
var mainGate = "1:8000";

Future getCrops()async{
  print("clicked Do");
  var url = Uri.http(mainGate,"/crops");
  var res = await http.get(url);

  var decodedBody = jsonDecode(res.body);

  if(res.statusCode == 200){
    print(decodedBody);
  }else{
    print(decodedBody);
  }
}
}