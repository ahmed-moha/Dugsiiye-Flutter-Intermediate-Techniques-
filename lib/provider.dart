import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:galler_app/image_model.dart';

class HomeProvider {
  getImages() async {
    try {
      var response = await rootBundle.loadString("assets/data/data.json");
      List data = jsonDecode(response);
      return data.map((e) => ImageModel.fromJson(e)).toList();
    } catch (e) {
      log(e.toString(), name: "Get Images error");
    }
  }
}
