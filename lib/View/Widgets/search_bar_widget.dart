import 'package:big_cart/view/Screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0.r),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث هنا',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            onPressed: () {
              Get.to(Search());
            },
            icon: const Icon(Icons.filter_alt_outlined)),
      ],
    );
  }
}