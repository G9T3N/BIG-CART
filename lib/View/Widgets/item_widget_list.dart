import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidgetList extends StatelessWidget {
  final int index;
  final void Function()? onTap;
  final ScrollPhysics? scrollPhysics;
  final List<dynamic> itemName;
  final List<dynamic> itemImage;
  final List<dynamic>? itemPrice;

  const ItemWidgetList(
      {super.key,
      required this.index,
      required this.itemName,
      required this.itemImage,
      this.scrollPhysics,
      this.itemPrice,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: scrollPhysics ?? NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      semanticChildCount: 2,
      crossAxisCount: 2,
      crossAxisSpacing: 8.0.w,
      mainAxisSpacing: 26.0.h,
      childAspectRatio: 0.75,
      children: [
        ...List.generate(index, (i) {
          return ItemWidget(
            onTap: onTap,
            itemPrice: itemPrice?[i],
            index: i,
            itemName: itemName[i],
            imageName: "assets/images/grape$i.png",
          );
        })
      ],
    );
  }
}
