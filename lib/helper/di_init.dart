// import 'package:get/get.dart';
// import 'package:sebaghar/utill/app_constants.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'remote/api_client.dart';
//
// Future<void> init() async {
//   final sharedPreferences = await SharedPreferences.getInstance();
//   Get.lazyPut(() => sharedPreferences);
//   Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl, sharedPreferences: Get.find()));
//
//   /// --------------->>>>>>>>>>>> Repository <<<<<<<<<<<<<------------------
//   // Get.lazyPut(() => AuthRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
//   // Get.lazyPut(() => AccountOrderRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   // Get.lazyPut(() => CheckRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
//   // Get.lazyPut(() => RiderAttendenceRepo(apiClient: Get.find()));
//
//
//   /// ---------------->>>>>>>>>>>> Controller <<<<<<<<<<<<------------------
//   // Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
//   // Get.lazyPut(() => AuthController(authRepo: Get.find()));
//   // Get.lazyPut(() => AccountOrderController(accountOrderRepo: Get.find()));
//   // Get.lazyPut(() => CheckController(checkRepo: Get.find()));
//   // Get.lazyPut(() => RiderAttendenceController(riderAttendenceRepo: Get.find()));
//   /// -------->>>>>>> develop <<<<<<<<----------
//   // Get.lazyPut(() => SplashController(splashRepo: Get.find()));
//
// }
