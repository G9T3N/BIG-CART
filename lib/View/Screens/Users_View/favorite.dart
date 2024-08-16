import 'package:big_cart/core/Widgets/item_page_widget.dart';
import 'package:big_cart/controller/users/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/View/Widgets/item_widget_list.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';
import 'package:get/get.dart';

class Favorite extends StatelessWidget {
  const Favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FavoriteControllerImp controllerImp = Get.put(FavoriteControllerImp());
    return ItemPageWidget(
        pageName: "المفضلة",
        scrollPhysics: AlwaysScrollableScrollPhysics(),
        itemLength: controllerImp.grapes.length,
        itemName: controllerImp.grapes,
        itemImage: controllerImp.grapeImages);
  }
}
