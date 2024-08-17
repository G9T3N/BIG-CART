import 'package:big_cart/View/Screens/Users_View/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/category_product.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Users_View/main_user_screen.dart';
import 'package:big_cart/View/Screens/onBorading/onborading_page_view.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:big_cart/core/enum/status_request.dart';
// import 'package:big_cart/View/Screens/login.dart';
import 'package:get/get.dart';

abstract class CowSplashScreen extends GetxController {
  goToHome();
}

class CowSplashScreenImp extends CowSplashScreen {
  ProductsControllerImp controllerImp = Get.put(ProductsControllerImp());
  @override
  void onInit() {
    super.onInit();
    goToHome();
    Get.arguments;
  }

  @override
  goToHome() async {
    await controllerImp.showProductsOfSingleCategory();
    update();
    if (controllerImp.statusRequest == StatusRequest.succses)
      Future.delayed(const Duration(milliseconds: 900)).then(
        (value) async {
          Get.offAll(const CategoryProduct());
        },
      );
    else {
      print('cow');
    }
  }
}
