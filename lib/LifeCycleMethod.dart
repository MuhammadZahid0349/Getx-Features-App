import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Getx_Widgets/Controller/mycontroller.dart';

class LifeCycleMethod extends StatelessWidget {
  LifeCycleMethod({super.key});

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
                  initState: (data) => _controller.increments(),
                  dispose: (_) => _controller.cleantask(),
                  builder: (controller) {
                    return Text(
                      "The value is ${_controller.counts}",
                      style: TextStyle(fontSize: 25.sp, color: Colors.blue),
                    );
                  }),
              25.h.heightBox,
              OutlinedButton(
                  onPressed: () {},
                  child: Text("After increments of 5 seconds"))
            ],
          ),
        ),
      ),
    );
  }
}
