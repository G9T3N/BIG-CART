import 'package:big_cart/View/Widgets/splash_category_screen.dart';
import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/controller/users/cow_splash_screen.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowScreen extends StatelessWidget {
  const CowScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ProductsControllerImp controllerImp = Get.put(ProductsControllerImp());
    // print(Get.arguments['index']);
    return GetBuilder<CowSplashScreenImp>(
      init: CowSplashScreenImp(),
      initState: (_) {},
      builder: (cowSplashScreenImp) {
        return SplashCategorySelected(
            categreyName: cowSplashScreenImp.splashCategoryName[
                controllerImp.index - 1 == -1 ? 0 : controllerImp.index - 1],
            categreyImage: cowSplashScreenImp.splashCategoryImage[
                controllerImp.index - 1 == -1 ? 0 : controllerImp.index - 1]);
      },
    );
  }
}
