import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_features/Getx_Widgets/Controller/mycontroller.dart';
import 'package:velocity_x/velocity_x.dart';

class IncrementNumGetx extends StatelessWidget {
  IncrementNumGetx({super.key});

// create the instance of controller
  MyController _myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("increment number getx"),
      ),
      body: Center(
        child: Column(
          children: [
            20.h.heightBox,
            GetX<MyController>(
                // init: MyController(),
                builder: (controller) {
              return Text(
                // "The Value is ${controller.count}",
                "The Value is ${_myController.count}",
                style: TextStyle(fontSize: 25.sp),
              );
            }),
            20.h.heightBox,
            ElevatedButton(
                onPressed: () {
                  // if instance of controller not created on top
                  // Get.find<MyController>().increment();

                  //////////////////////////
                  _myController.increment();
                  print("objec1t  00000");
                },
                child: Text("Increment Number"))
          ],
        ),
      ),
    ));
  }
}
