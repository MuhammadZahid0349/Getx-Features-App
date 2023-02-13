import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text("1st Screen"),
            ),
            10.h.heightBox,
            Center(
              child: Text(
                ("${Get.arguments}"),
                style: TextStyle(color: Colors.purple, fontSize: 25.sp),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "This is from Home Screen");
              },
              child: Text("Go back to Main Screen "),
            ),
          ],
        ),
      ),
    );
  }
}
