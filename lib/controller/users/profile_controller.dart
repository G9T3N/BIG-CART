import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/services/myservices.dart';
import 'package:big_cart/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {}

class ProfileControllerImp extends ProfileController {

  List<String> tileText = <String>[
    " نبذة عني",
    "طلبي",
    "الاشعارات",
    "تغير كلمة المرور",
    " إدارة العناوين",
    "تسجيل الخروج",
  ];
  List<IconData> tileIcon = <IconData>[
    CupertinoIcons.person_alt_circle,
    CupertinoIcons.cube_box,
    CupertinoIcons.bell,
    CupertinoIcons.lock,
    CupertinoIcons.placemark_fill,
    CupertinoIcons.arrow_left_circle,
  ];
  List<void Function()> tileNavigare = <void Function()>[
    () {
      Get.toNamed(AppRoute.aboutMe);
    },
    () {
      Get.toNamed(AppRoute.listOfOrders);
    },
    () {},
    () {},
    () {},
    () {
  MyServices c = Get.put(MyServices());

      c.sharedPref.clear();
      Get.toNamed(AppRoute.selectionScreen);
    },
  ];
}
