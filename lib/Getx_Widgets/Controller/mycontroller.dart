import 'package:get/get.dart';
import 'package:getx_features/Getx_Widgets/State_Management_Obx/student_class.dart';

class MyController extends GetxController {
  // var student = Student();   // for individual

  // void upperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  var student = Student(name: "zahid", age: 22).obs; // for whole class
  void convertUpperCase() {
    student.update((val) {
      val?.name = val.name.toString().toUpperCase();
    });
  }
  //////////////////////////////
}
