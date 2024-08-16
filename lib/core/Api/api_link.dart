class AppLink {
  static const String linkServerName =
      "https://1795-176-123-21-153.ngrok-free.app";

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
