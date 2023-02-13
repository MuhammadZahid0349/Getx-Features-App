import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class DialogBoxW extends StatelessWidget {
  const DialogBoxW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.defaultDialog(
          title: "New Dialog Title",
          titleStyle: TextStyle(fontSize: 25.sp),
          // middleText: "This is a middle text",
          middleTextStyle: TextStyle(fontSize: 20.sp),
          backgroundColor: Colors.purple.withOpacity(0.5),
          radius: 20.r,
          ////////////////// to customized middle text
          content: Row(
            children: [
              CircularProgressIndicator(),
              16.w.widthBox,
              Expanded(child: Text("Data Loading..."))
            ],
          ),
          textCancel: "Cancel",
          cancelTextColor: Colors.green,
          textConfirm: "Confirm",
          confirmTextColor: Colors.blue,
          onCancel: () {},
          onConfirm: () {},
          buttonColor: Colors.orange,

          //Customized the Cancel and Confirm button
          cancel: Text("cancel"),
          confirm: Text("Confirm"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("1")),
            ElevatedButton(
              onPressed: () {},
              child: Text("data2"),
            ),
          ],
          // barrierDismissible: false,   // outside touch close dialog box
        );
      },
      child: Text("Show Dialog"),
    );
  }
}
