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

  //// increment number Getx //////////
  var count = 0.obs;
  void increment() {
    count++;
  }

///////// Simple state Management
  var add = 0;
  void addCount() {
    add++;
    update();
  }

  ////////////  Life Cycle Method /////////////////
  var counts = 0;
  void increments() async {
    await Future.delayed(Duration(seconds: 5));
    this.counts++;
    update();
  }

  void cleantask() {
    print("Clean Task");
  }

  @override
  void onInit() {
    print("Init Called");
    super.onInit();
  }

  @override
  void onClose() {
    print("Init Closed");
    super.onClose();
  }
}
