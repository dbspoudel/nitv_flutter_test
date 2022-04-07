enum Flavor {
  development,
  qa,
  production,
}

class FlavorConfig {
  static late Flavor appFlavor;

  static String get flavorString {
    switch (appFlavor) {
      case Flavor.production:
        return 'PRODUCTION';
      case Flavor.qa:
        return 'QA';
      case Flavor.development:
      default:
        return 'DEVELOPMENT';
    }
  }

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.production:
        return "";
      case Flavor.qa:
        return "";
      case Flavor.development:
      default:
        return "https://newsapi.org/v2/";
    }
  }
}
