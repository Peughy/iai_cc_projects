import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iai_cc_projects/src/edima_gl3b/models/image_model.dart';

class EdimaService {
  final String baseUrl = "https://picsum.photos/v2/list";
  Future<List<ImageModel>> fetchImage() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      print(data);
      return data.map((e) => ImageModel.fromJson(e)).toList();
    } else {
      throw Exception("Erreur lors du chargement");
    }
  }
}
