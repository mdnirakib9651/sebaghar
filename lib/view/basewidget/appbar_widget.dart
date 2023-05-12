import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebaghar/utill/all_images.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/utill/style/lato_styles.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {

  final GlobalKey<_AppBarWidgetState> appBarKey = GlobalKey<_AppBarWidgetState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      key: appBarKey,
      backgroundColor: ColorResources.white,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 20, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AllImages.sebaGharLogo2, height: 50, width: 150,),
              InkWell(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          actions: [
                            Container(
                              height: 130,
                              width: size.width,
                              color: ColorResources.white,
                              child: Column(
                                children: [
                                  const SizedBox(height: 15,),
                                  Text("আপনার লগইন করতে হবে। আপনি কি রাজি?", style: latoRegular.copyWith(color: ColorResources.black),),
                                  const SizedBox(height: 40,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Get.back();
                                          },
                                          child: Container(
                                            height: 40,
                                            width: size.width / 3,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              color: ColorResources.searchBackGroundColor,
                                            ),
                                            child: Center(child: Text("না", style: latoRegular.copyWith(color: ColorResources.black),),),
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: size.width / 3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: ColorResources.primaryColor,
                                          ),
                                          child: Center(child: Text("হ্যাঁ", style: latoRegular.copyWith(color: ColorResources.white),),),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorResources.backGroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: ColorResources.primaryColor,
                          ),
                          child: Center(child: Text("৳", style: latoBold.copyWith(color: ColorResources.white, fontSize: 20),),),
                        ),
                        Text("ট্যাপ করুন", style: latoBold16.copyWith(color: ColorResources.black,),),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
