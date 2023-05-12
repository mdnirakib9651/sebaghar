import 'package:get/get.dart';
import 'package:sebaghar/view/screen/doctor_page_widget/doctor_page_widget.dart';
import 'package:sebaghar/view/screen/emergency_doctor_page_widget/emergency_doctor_page_widget.dart';
import 'package:sebaghar/view/screen/my_doctor_page_widget/my_doctor_page_widget.dart';
import 'package:sebaghar/view/screen/my_home_screen/my_home_screen.dart';
import 'package:sebaghar/view/screen/profile_page_widget/profile_page_widget.dart';
import 'package:sebaghar/view/screen/splash%20screen/splash_screen.dart';

class AllRoutes {
  static const String splashScreen = '/splash';
  static const String homeScreen = '/myHomeScreen';
  static const String dashboard = '/';
  static const String doctorPageWidget = '/doctorPageWidget';
  static const String emergencyDoctorPageWidget = '/emergencyDoctorPageWidget';
  static const String myDoctorPageWidget = '/myDoctorPageWidget';
  static const String profilePageWidget = '/profilePageWidget';

  static String getSplashRoute() => splashScreen;

  // static String getHomeRoute() => myHomeScreen;

  // static String getOnBoardingRoute() => onBoarding;
  //
  // static String getMainRoute() => dashboard;
  //
  // static String getSuccessfulRoute() => successfulScreen;
  //
  // static String getSearchResultRoute() => searchResult;
  //
  // static String getSearchScreenRoute() => searchScreen;
  //
  // static String getNotificationRoute() => notification;
  //
  // static String getFavouriteRoute() => favourite;

  // static String getProductDetailsRoute(int id, String name) => '$productDetails?id=$id&name=$name';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const myHomeScreen()),
    GetPage(name: doctorPageWidget, page: () => const DoctorPageWidget()),
    GetPage(name: emergencyDoctorPageWidget, page: () => const EmergencyDoctorPageWidget()),
    GetPage(name: myDoctorPageWidget, page: () => const MyDoctorPageWidget()),
    GetPage(name: profilePageWidget, page: () => const ProfilePageWidget()),
  ];
}