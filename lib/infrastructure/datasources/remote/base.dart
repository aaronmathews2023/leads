const bool isProduction = true;

class Api {
  static const String baseUrl = isProduction
      ? "http://103.86.177.116:8058/"
      : "http://103.86.177.116:8058/";
  static const String shareUrl = isProduction
      ? "https://"
      : "https://";
  static const bool isLogEnable = true;
 
}


