import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/exam_controller.dart';

class ExamView extends GetView<ExamController> {
  const ExamView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExamView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExamView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
