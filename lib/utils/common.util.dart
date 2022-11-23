import 'dart:convert';
import 'package:flutter/services.dart';

class CommonUtil {

  static Future<Map<String, dynamic>> jsonDecoder(String path) async {
    return await rootBundle.loadString(path).then((value) {
      Map<String, dynamic> map = json.decode(value);
      return map;
    });
  }
}