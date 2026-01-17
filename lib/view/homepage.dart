import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:message/controller/datacontroller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // create instance for controller
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DataController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi this is my first app, and im learning flutter."),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Obx(() {
          var data = controller.dataModel.value;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data.category ?? ""),
            ],
          );
        }),
      ),
    );
  }
}
