import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomSheetW extends StatelessWidget {
  const BottomSheetW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text("Light Theme"),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text("Dark Theme"),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                  ),
                ],
              ),
            ),
            barrierColor: Colors.transparent,
            backgroundColor: Colors.grey.withOpacity(0.3),
            isDismissible: false, //clicking outside not work
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2.w),
            ),
            enableDrag: false,
          );
        },
        child: Text("BottomSheet"));
  }
}
