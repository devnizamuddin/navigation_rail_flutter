import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/experiment_controller.dart';

class ExperimentView extends GetView<ExperimentController> {
  const ExperimentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExperimentView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExperimentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
