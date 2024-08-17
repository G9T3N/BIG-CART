import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

class FoodType extends StatelessWidget {
  final String chipImage;
  final List<String> chipName;
  final void Function()? onPressed;

  const FoodType(
      {super.key,
      required this.chipImage,
      required this.chipName,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...List.generate(
          chipName.length,
          (index) {
            return Padding(
              padding: EdgeInsets.only(
                right: 24.w,
                top: 10.h,
                left: 12.w,
              ),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ImagePixels(
                        imageProvider: AssetImage(
                          "assets/images/grape$index.png",
                        ),
                        builder: (context, img) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color:
                                  img.pixelColorAtAlignment!(Alignment.center),
                            ),
                            child: MaterialButton(
                              shape: const RoundedRectangleBorder(),
                              onPressed: onPressed,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 6.h),
                              child: Text(
                                chipName[index],
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: -15.h,
                        right: -20.w,
                        child: Image.asset(
                          "assets/images/grape$index.png",
                          width: 50.w,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        )
      ]),
    );
  }
}
