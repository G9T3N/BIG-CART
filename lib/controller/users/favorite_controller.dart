import 'package:get/get.dart';

abstract class FavoriteController extends GetxController {}

class FavoriteControllerImp extends FavoriteController {
  final List<String> grapes = <String>[
    'عناب خارجي',
    'عناب عامري',
    'عناب أسود',
    'عناب أحمر',
    'عناب زاقي',
    'عناب عامري',
  ];
 final List<String> grapeImages = <String>[
    "assets/images/grapes",
    "assets/images/grapes0",
    "assets/images/grapes1",
    "assets/images/grapes2",
    "assets/images/grapes3",
    "assets/images/grapes4",
    "assets/images/grapes5",

  ];
}
