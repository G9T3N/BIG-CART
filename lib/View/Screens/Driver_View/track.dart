import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/driver/track/custom_container.dart';

class Track extends StatelessWidget {
  const Track({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF9E4),
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffEEF9E4),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('اسم المزارع'),
                accountEmail: const Text('username@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 73, 62, 62),
                  child: Icon(Icons.account_circle, size: 40, color: Colors.green),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('نبذة عني'),
                onTap: () {
                  Get.toNamed(AppRoute.aboutMe);
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('الموقع'),
                onTap: () {
                  // تنفيذ كود عند الضغط
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('تسجيل الخروج'),
                onTap: () {
                  Get.toNamed(AppRoute.loginFarmer);
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Card(
          color: Colors.white,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "تتبع المسار",
                  style: TextStyle(color: Colors.black, fontSize: 22.0),
                ),
                SizedBox(
                  height: 24.0,
                ),
                CustomContainer(
                  icon: Icons.note_add_outlined,
                  text: 'الطلب قيد التجهيز',
                ),
                CustomContainer(
                  icon: Icons.hexagon_outlined,
                  text: 'تم الشحن ',
                ),
                CustomContainer(
                  icon: Icons.fire_truck,
                  text: 'الطلب في الطريق',
                ),
                CustomContainer(
                  icon: Icons.check_circle_outline,
                  text: 'تم التسليم',
                  last: true,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color.fromARGB(255, 119, 151, 107),
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(Icons.favorite_border_outlined,
              size: 30, color: Color(0xffA7CA9A)),
          Icon(Icons.home_outlined,
              size: 30, color: Color.fromARGB(255, 114, 182, 138)),
          Icon(Icons.shopping_cart_outlined,
              size: 30, color: Color(0xffA7CA9A)),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              // انتقال إلى صفحة المفضلة
              Get.toNamed(AppRoute.orderDetails);
              break;
            case 1:
              // انتقال إلى الصفحة الرئيسية
              Get.toNamed(AppRoute.SectionsDeliver);
              break;
            case 2:
              // انتقال إلى صفحة سلة التسوق
             Get.toNamed(AppRoute.track);
              break;
          }
        },
      ),
    );
  }
}
