import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:big_cart/View/Widgets/item_widget_list.dart';
import 'package:big_cart/core/Widgets/handling_data_view.dart';
import 'package:big_cart/core/Widgets/item_page_widget.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});
  @override
  Widget build(BuildContext context) {
    ProductsControllerImp controller = Get.put(ProductsControllerImp());
    return ItemPageWidget(
      pageName: controller.data[0]["category_name"],
      child: GetBuilder<ProductsControllerImp>(
        builder: (c) {
          return HandlingDataView(
            acontext: context,
            statusRequest: c.statusRequest,
            widget: GridView.count(
              shrinkWrap: true,
              semanticChildCount: 2,
              crossAxisCount: 2,
              crossAxisSpacing: 8.0.w,
              mainAxisSpacing: 26.0.h,
              childAspectRatio: 0.75,
              children: [
                ...List.generate(
                  5,
                  (i) {
                    return ItemWidget(
                      onTap: () {
                        c.data[i]["id"];
                      },
                      itemPrice: c.data[i]["prias"],
                      index: i,
                      itemName: c.data[i]["name"],
                      imageName: c.data[i]["photo"],
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
