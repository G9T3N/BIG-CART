import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  final String itemName;
  final String? itemPrice;
  final void Function()? onTap;
  final bool? isFavorite;
  final String imageName;

  const ItemWidget(
      {super.key,
      required this.index,
      this.isFavorite,
      required this.itemName,
      required this.imageName,
      this.itemPrice,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    String itemname;
    if (itemName.length > 13) {
      itemname = itemName.characters.take(12).string;
    } else {
      itemname = itemName;
    }
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.r),
          bottomRight: Radius.circular(12.r),
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(45.r),
        ),
        child: ImagePixels.container(
          imageProvider: NetworkImage(
            imageName,
          ),
          colorAlignment: Alignment.center,
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Row(
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                        ),
                      ),
                      minWidth: 50.w,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 10.w),
                      color: Colors.white38,
                      onPressed: () {},
                      child: const Icon(Icons.shopping_cart_checkout_outlined,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Image.network(
                    imageName,
                    fit: BoxFit.cover,
                    height: 85.h,
                  ),
                  // "assets/images/grape$index.png",
                ),
                SizedBox(height: 5.h),

                // const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,

                          itemname,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          " مزرعة السعيدة",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          " $itemPrice الف ريال ",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.heart,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
