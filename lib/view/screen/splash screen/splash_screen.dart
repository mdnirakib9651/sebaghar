import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebaghar/utill/all_images.dart';
import 'package:sebaghar/utill/all_routes.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/utill/style/lato_styles.dart';
import 'package:sebaghar/view/screen/my_home_screen/my_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  late StreamSubscription<ConnectivityResult> onConnectivityChanged;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ------------->>>> Splash Screen <<<<-----------------
    bool firstTime = true;
    onConnectivityChanged = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (!firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi &&
            result != ConnectivityResult.mobile;
        isNotConnected
            ? const SizedBox()
            : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? "No Connection" : "Connected",
            textAlign: TextAlign.center,
          ),
        ));
        if (!isNotConnected) {
          _route();
        }
      }
      firstTime = false;
    });
    _route();
  }

  void _route(){
    Timer(const Duration(seconds: 5), () {
      Get.toNamed(AllRoutes.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.primaryColor,
      body: Column(
        children: [
          SizedBox(height: size.height / 2.5,),
          Center(child: Image.asset(AllImages.sebaGharLogo, width: 350,)),
          Expanded(child: Container()),
          Image.asset(AllImages.lifeLineHeart, height: 100, width: 100,),
          const SizedBox(height: 60,),
          Text("version: 7.0.5", style: latoRegular.copyWith(color: ColorResources.grey, fontSize: 12),),
          Text("Developed by Bdtask", style: latoRegular.copyWith(color: ColorResources.white),),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
