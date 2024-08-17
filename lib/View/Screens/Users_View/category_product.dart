import 'package:big_cart/View/Screens/Users_View/product.dart';
import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:big_cart/View/Widgets/item_widget_list.dart';
import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/Widgets/handling_data_view.dart';
import 'package:big_cart/core/Widgets/item_page_widget.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});
  @override
  Widget build(BuildContext context) {
    ProductsControllerImp controller = Get.put(ProductsControllerImp());
    controller.showProductsOfSingleCategory();
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
                  controller.data[0]["category_name"] ?? "",
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
              Expanded(child: GetBuilder<ProductsControllerImp>(
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
                          c.data.length,
                          (i) {
                            return ItemWidget(
                              onTap: () {
                                c.data[i]["id"];
                                Get.to(
                                  () => Product(
                                      productimage:
                                          "${AppLink.linkServerStotage}${c.data[i]["photo"]}",
                                      productName: c.data[i]['name'],
                                      quantity: c.data[i]['quantity'],
                                      price: c.data[i]['prais'],
                                      description: c.data[i]['description']),
                                );
                              },
                              itemPrice: c.data[i]["prais"],
                              index: i,
                              itemName: c.data[i]["name"],
                              imageName:
                                  "${AppLink.linkServerStotage}${c.data[i]["photo"]}",
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
