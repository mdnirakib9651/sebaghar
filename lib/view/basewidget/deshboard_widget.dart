// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:sebaghar/utill/all_images.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/utill/style/lato_styles.dart';

class DeshBoardWidget extends StatefulWidget {
  final Function(int index) onPress;
  const DeshBoardWidget({Key? key, required this.onPress}) : super(key: key);

  @override
  State<DeshBoardWidget> createState() => _DeshBoardWidgetState();
}

class _DeshBoardWidgetState extends State<DeshBoardWidget> {

  Color doctorColor = ColorResources.primaryColor;
  Color emergency = ColorResources.grey;
  Color myDoctor = ColorResources.grey;
  Color profile = ColorResources.grey;

  int selectedIndex = 0;

  void _onBottomBarTapped(int index){
    setState(() {
      selectedIndex = index;

      if(selectedIndex == 0){
        doctorColor = ColorResources.primaryColor;
        emergency = ColorResources.grey;
        myDoctor = ColorResources.grey;
        profile = ColorResources.grey;
      }
      else if(selectedIndex == 1){
        doctorColor = ColorResources.grey;
        emergency = ColorResources.primaryColor;
        myDoctor = ColorResources.grey;
        profile = ColorResources.grey;
      }
      else if(selectedIndex == 2){
        doctorColor = ColorResources.grey;
        emergency = ColorResources.grey;
        myDoctor = ColorResources.primaryColor;
        profile = ColorResources.grey;
      }
      else{
        doctorColor = ColorResources.grey;
        emergency = ColorResources.grey;
        myDoctor = ColorResources.grey;
        profile = ColorResources.primaryColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return BottomAppBar(
      color: ColorResources.white,
      notchMargin: 7.0,
      elevation: 0.0,
      // shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    widget.onPress(0);
                    _onBottomBarTapped(0);
                  },
                child: Container(
                  height: 50,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      Image.asset(AllImages.doctorDesh, height: 25, width: 25, color: doctorColor),
                      const SizedBox(height: 5,),
                      Text("ডাক্তার", style: latoRegular.copyWith(color: doctorColor, fontSize: 12),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  widget.onPress(1);
                  _onBottomBarTapped(1);
                },
                child: Container(
                  height: 50,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      Image.asset(AllImages.emergencyDoctor, height: 25, width: 25, color: emergency),
                      const SizedBox(height: 5,),
                      Text("জরুরী ডাক্তার", style: latoRegular.copyWith(color: emergency, fontSize: 12),)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 50,),
              InkWell(
                onTap: (){
                  widget.onPress(2);
                  _onBottomBarTapped(2);
                },
                child: Container(
                  height: 50,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      Image.asset(AllImages.myDoctor, height: 25, width: 25, color: myDoctor),
                      const SizedBox(height: 5,),
                      Text("আমার ডাক্তার", style: latoRegular.copyWith(color: myDoctor, fontSize: 12))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  widget.onPress(3);
                  _onBottomBarTapped(3);
                },
                child: Container(
                  height: 50,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      Image.asset(AllImages.profile, height: 25, width: 25, color: profile),
                      const SizedBox(height: 5,),
                      Text("প্রোফাইল", style: latoRegular.copyWith(color: profile, fontSize: 12))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
