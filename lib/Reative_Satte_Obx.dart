import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ReactiveStateObx extends StatelessWidget {
  ReactiveStateObx({super.key});

  var count = 0.obs;

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
            ],
          ),
        ),
      ),
    );
  }
}
