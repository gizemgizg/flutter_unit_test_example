import 'dart:async';
import 'dart:convert';
import 'package:festivalproject/home_screen/model/home_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  HomeScreenModel? homeScreenModel;
  late RxList<Results> list;

  HomeViewModel() {
    list = <Results>[].obs;
  }


  @override
  void onReady() async {
    super.onReady();
    await getData();
  }

  Future<HomeScreenModel?> getData() async {
    try {
      final url = Uri.parse("https://rickandmortyapi.com/api/character");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        homeScreenModel = HomeScreenModel.fromJson(json.decode(response.body));
        list.value = homeScreenModel!.results;
        return HomeScreenModel.fromJson(json.decode(response.body));
      } else {
        print("hata var");
      }
    } catch (e) {
      rethrow;
    }
  }
}
