import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// hello
class HelloWidget extends GetView<LoginController> {
  const HelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Obx(() => Text(controller.state.count.toString())),
        ElevatedButton(
            onPressed: () {
              controller.state.add();
            },
            child: const Text('Add one'))
      ]),
    );
  }
}
