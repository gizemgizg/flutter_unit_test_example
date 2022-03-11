

import 'package:festivalproject/home_screen/model/home_model.dart';
import 'package:festivalproject/home_screen/viewmodel/home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  
  late HomeViewModel homeViewModel;
  
  setUp((){
    homeViewModel = HomeViewModel();
  });

  test("get data test", () async{
    final response = await homeViewModel.getData();
    expect(response is HomeScreenModel, true);
  });
}
