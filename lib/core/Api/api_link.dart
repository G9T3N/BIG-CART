class AppLink {
  static const String linkServerName =
      "https://4d64-176-123-24-147.ngrok-free.app";
//======================== Image-Files=================================
  static const String linkServerStotage = "$linkServerName/storage/";
  //==============================Auth==============================//
  static const String linkSignUp = "$linkServerName/api/register";
  static const String linkLogin = "$linkServerName/api/login";
  //==============================User-Links==============================//
  static const String linkAllCategories = "$linkServerName/api/categories";
  static const String linkAllProducts = "$linkServerName/api/products/";
  static const String linkSingleCategoryProducts =
      "$linkServerName/api/products/category/";

  static const String linkCategories = "$linkServerName/api/categories";
  //==============================address==============================//
  static const String addressApi = "$linkServerName/api/addresses";
}
