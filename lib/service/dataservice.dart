import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:message/model/datamodel.dart';

class Dataservices {
  // get url
  var url = "https://fakestoreapi.com/products/1";
  // 2 create get function

  Future<DataModel?> getService() async {
    var response = await http.get(Uri.parse(url));
    // 3 check condition

    if (response.statusCode == 200) {
      //  4 json decode
      var data = json.decode(response.body);
      return DataModel.fromJson(data);
    } else {
      return null;
    }
  }
}
