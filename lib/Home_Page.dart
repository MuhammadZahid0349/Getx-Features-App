import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_features/Getx_Widgets/bottomsheetw.dart';
import 'package:getx_features/Getx_Widgets/dialogboxw.dart';
import 'package:getx_features/Getx_Widgets/routesfeatures.dart';
import 'package:getx_features/Getx_Widgets/snackbarw.dart';
import 'package:getx_features/Screens/firstScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: "Get X Structure's".text.make(),
          centerTitle: true,
        ),
        body: Column(
          children: [
            10.h.heightBox,
            SnackbarButton(),
            DialogBoxW(),
            BottomSheetW(),
            RoutesFeatures(),
            ////////// Reactive State Management
          ],
        ),
      ),
    );
  }
}
