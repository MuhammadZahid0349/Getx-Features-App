import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_features/Getx_Widgets/Controller/mycontroller.dart';
import 'package:getx_features/Getx_Widgets/State_Management_Obx/student_class.dart';
import 'package:velocity_x/velocity_x.dart';

class ReactiveStateObx extends StatelessWidget {
  ReactiveStateObx({super.key});

  var count = 0.obs;

  MyController _myController = Get.put(MyController());

  // var student = Student();   individuals Rx variable class

  // final student = Student(name: "zahid", age: 22).obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            children: [
              20.h.heightBox,
              Obx(() => Text(
                    "$count",
                    style: TextStyle(color: Colors.blue, fontSize: 25.sp),
                  )),
              20.h.heightBox,
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("increment")),
              20.h.heightBox,
              ///////////       individual obx class variables
              // Obx(() => Text(
              //       "Student name is : ${student.name.value}",
              //       style: TextStyle(color: Colors.red, fontSize: 25.sp),
              //     )),
              // ElevatedButton(
              //     onPressed: () {
              //       student.name.value = student.name.value.toUpperCase();
              //     },
              //     child: Text("Convert into Upper Case")),

              //////     Entire class observable    ////// /
              // Obx(() => Text(
              //       "Student name is : ${student.value.name}",
              //       style: TextStyle(color: Colors.red, fontSize: 25.sp),
              //     )),
              // ElevatedButton(
              //     onPressed: () {
              //       student.update((student) {
              //         student?.name = student.name.toString().toUpperCase();
              //       });
              //     },
              //     child: Text("Convert into Upper Case")),

              // Separate Sheet Controller individual
              // Obx(() => Text(
              //       "Student name is : ${_myController.student.name}",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(color: Colors.red, fontSize: 25.sp),
              //     )),
              // ElevatedButton(
              //     onPressed: () {
              //       _myController.upperCase();
              //     },
              //     child: Text("Sep-Upper Case")),

              // entire class obervalble sep sheet
              Obx(() => Text(
                    "Student name is : ${_myController.student.value.name}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 25.sp),
                  )),
              ElevatedButton(
                  onPressed: () {
                    _myController.convertUpperCase();
                  },
                  child: Text("Sep-Upper Case")),
            ],
          ),
        ),
      ),
    );
  }
}
