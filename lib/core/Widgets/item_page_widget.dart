import 'package:big_cart/controller/users/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/View/Widgets/item_widget_list.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';
import 'package:get/get.dart';

class ItemPageWidget extends StatelessWidget {
  final String pageName;
  final ScrollPhysics? scrollPhysics;
  final int? itemLength;
  final List<dynamic>? itemName;
  final List<dynamic>? itemImage;
  final List<dynamic>? itemPrice;
  final Widget? child;

  final void Function()? onTap;

  const ItemPageWidget({
    super.key,
    required this.pageName,
    this.scrollPhysics,
    this.itemLength,
    this.itemName,
    this.itemImage,
    this.onTap,
    this.itemPrice,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    FavoriteControllerImp controllerImp = Get.put(FavoriteControllerImp());
    return AppScaffold(
      isPadding: false,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                centerTitle: true,
                title: Text(
                  pageName,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const SearchBarWidget(),
              SizedBox(
                height: 12.h,
              ),
              Expanded(
                child: child ??
                    ItemWidgetList(
                        itemPrice: itemPrice,
                        onTap: onTap,
                        scrollPhysics: scrollPhysics,
                        index: itemLength!,
                        itemName: itemName!,
                        itemImage: itemImage!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
