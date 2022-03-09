import 'package:festivalproject/home_screen/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Get.find<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Flutter Festival Turqoise"),
      ),
      body: Obx(()=>
      homeViewModel.list.value.isEmpty ? const Center(child: CircularProgressIndicator()): ListView.builder(
          itemCount: homeViewModel.list.length,
          itemBuilder: (context, index) {
            return Image.network(
              homeViewModel.list[index].image.toString(),
            );
          },
        ),
      ),
    );
  }
}
