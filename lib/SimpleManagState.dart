import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_features/Getx_Widgets/Controller/mycontroller.dart';
import 'package:velocity_x/velocity_x.dart';

class SimpleStateManage extends StatelessWidget {
  SimpleStateManage({super.key});

  MyController _controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Simple State Management"),
        ),
        body: Center(
          child: Column(
            children: [
              20.h.heightBox,
              GetBuilder<MyController>(
                  // init: MyController(),
                  builder: (controller) {
                return Text(
                  "The value is ${_controller.add}",
                  style: TextStyle(fontSize: 25.sp, color: Colors.red),
                );
              }),
              25.h.heightBox,
              OutlinedButton(
                  onPressed: () {
                    _controller.addCount();
                    // Get.find<MyController>().addCount();
                  },
                  child: Text("Increment Number SMP"))
            ],
          ),
        ),
      ),
    );
  }
}
