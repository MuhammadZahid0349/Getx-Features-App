import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_features/Screens/firstScreen.dart';

class RoutesFeatures extends StatelessWidget {
  const RoutesFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Get.to(
        //   () => FirstScreen(),
        //   fullscreenDialog: true,
        //   transition: Transition.zoom,
        //   duration: Duration(milliseconds: 4000),
        //   curve: Curves.bounceInOut,
        // );
        /////////////////////
        // Get.off(HomePage()); //no option to go back previous screen
        // Get.offAll(HomePage()); //cancel all previous screen
        // Get.to(() => FirstScreen(), arguments: "Data From Main");
        var data = await Get.to(() => FirstScreen());
        print("Received Data from $data");
      },
      child: Text("Go to first Screen"),
    );
  }
}
