import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SnackbarButton extends StatelessWidget {
  const SnackbarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.snackbar(
            "Snack bar Title", "This will be snackbar Message",
            // titleText: Text("Another Title"),
            // messageText: Text("Another Message also"),
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.red,
            backgroundColor: Colors.black,
            borderRadius: 30.r,
            margin: EdgeInsets.all(10),
            // maxWidth: 100,
            animationDuration: Duration(milliseconds: 3000),
            backgroundGradient:
                LinearGradient(colors: [Colors.white, Colors.blue]),
            //// while using border color ensure you are using border width also
            borderColor: Colors.purple,
            borderWidth: 4,
            boxShadows: [
              BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(30, 50),
                  spreadRadius: 20.r,
                  blurRadius: 8)
            ],
            isDismissible: true, //close and open condition of Snackbar
            dismissDirection: DismissDirection.horizontal,
            forwardAnimationCurve: Curves.bounceInOut,
            // duration: Duration(milliseconds: 8000), // visible Time
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
            shouldIconPulse: false, // icon not animated
            leftBarIndicatorColor: Colors.amber,
            mainButton: TextButton(onPressed: () {}, child: Text("Retry")),
            onTap: (val) {
              print("Snackbar Clicked");
            },
            // overlayBlur: 5, //background screen will be blur
            // overlayColor: Colors.grey.withOpacity(0.5),
            padding: EdgeInsets.all(50),
            showProgressIndicator: true,
            progressIndicatorBackgroundColor: Colors.green,
            progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
            reverseAnimationCurve: Curves.bounceInOut,
            snackbarStatus: (val) {
              print(val);
            },
            // userInputForm: Form(
            //     child: Row(
            //   children: [Expanded(child: TextField())],
            // ))
          );
        },
        child: Text("Show Snackbar"));
  }
}
