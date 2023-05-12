// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:sebaghar/data/model/response/home_menu_model.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/utill/style/lato_styles.dart';

class MenuWidget extends StatelessWidget {
  HomeMenuModel homeMenuModel;
  MenuWidget({Key? key, required this.homeMenuModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 7,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorResources.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("${homeMenuModel.menuImage}", height: 35, width: 35,),
          const SizedBox(height: 10,),
          Text("${homeMenuModel.menuTitle}", style: latoBold.copyWith(color: ColorResources.black, fontSize: 13), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
