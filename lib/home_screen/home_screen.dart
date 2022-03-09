import 'package:festivalproject/home_screen/view/home.dart';
import 'package:festivalproject/home_screen/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeViewModel(),
      builder: (context) => const Home(),
    );
  }
}
