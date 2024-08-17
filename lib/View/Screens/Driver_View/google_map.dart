import 'package:big_cart/controller/driver/google_map_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  const GoogleMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleMapScreenControllerImp controller =Get.put(GoogleMapScreenControllerImp());
    return Scaffold(
        backgroundColor: Color(0xffEEF9E4),
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png",height: 50,),
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
        body: GetBuilder<GoogleMapScreenControllerImp>(builder: (controller)=>Container(child: controller.kGooglePlex==null?const Center(child: CircularProgressIndicator(color:Color(0xffA7CA9A) ,)):
        GoogleMap(
          markers: controller.marker.toSet(),

          initialCameraPosition: controller.kGooglePlex!,
          onMapCreated: (GoogleMapController mapController) {
            controller.googleMapController.complete(mapController);
          },
        )
          ,),)


         ,
        bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color.fromARGB(255, 119, 151, 107),
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(Icons.favorite_border_outlined, size: 30, color: Color(0xffA7CA9A)),
          Icon(Icons.home_outlined, size: 30, color: Color.fromARGB(255, 114, 182, 138)),
          Icon(Icons.shopping_cart_outlined, size: 30, color: Color(0xffA7CA9A)),
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
