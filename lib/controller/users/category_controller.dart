import 'package:big_cart/core/DataSource/Remote/category.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CategoryController extends GetxController {
  showAllCategories();
  goToSelectedCategory(int index, List arguments);
}

class CategoryControllerImp extends CategoryController {
  CategoryData categoryData = CategoryData(Get.find());

  StatusRequest statusRequest = StatusRequest.loading;
  late int index;
  List<dynamic> data = [];
  final List<String> categoryImage = <String>[
    "assets/images/vegetables.png",
    "assets/images/grains.png",
    "assets/images/fruits.png",
    "assets/images/cheicken.png",
  ];

  final List<String> categoryName = <String>[
    'خضروات',
    'حبوب',
    'فواكة',
    ' المواشي\n والدواجن',
  ];
  List categoryNavigate = [
    AppRoute.home,
    AppRoute.product,
    AppRoute.favorite,
    AppRoute.cowScreen,
  ];

  List arguments = [];

  // ! <login with Mysql>
  @override
  showAllCategories() async {
    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(_, 20, statusRequest);
    // print("$statusRequest");

    var response = await categoryData.getdata();
    print(response);
    statusRequest = handlingData(response);
    print("$statusRequest");
    if (statusRequest == StatusRequest.succses) {
      update();
      // Get.back();
      //?fetch data success than store user data and login
      if (response[0]['id'] != null) {
        data.addAll(response);
        // print(response['role_id']);
        // if (response['role_id'] == 1) {
        // print("${response['token']}");
        // print(data);
      } else if (response['message'] != null) {}
    } else {
      print("object");
    }

    update();
  }

//! </login with Mysql>
  @override
  void onInit() {
    showAllCategories();

    super.onInit();
  }

  @override
  goToSelectedCategory(int index, List arguments) {
    Get.toNamed(AppRoute.cowScreen, arguments: arguments);
  }
}
