// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:sebaghar/utill/all_images.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/view/basewidget/appbar_widget.dart';
import 'package:sebaghar/view/basewidget/deshboard_widget.dart';
import 'package:sebaghar/view/screen/doctor_page_widget/doctor_page_widget.dart';
import 'package:sebaghar/view/screen/emergency_doctor_page_widget/emergency_doctor_page_widget.dart';
import 'package:sebaghar/view/screen/my_doctor_page_widget/my_doctor_page_widget.dart';
import 'package:sebaghar/view/screen/profile_page_widget/profile_page_widget.dart';

class myHomeScreen extends StatefulWidget {
  const myHomeScreen({Key? key}) : super(key: key);

  @override
  State<myHomeScreen> createState() => _myHomeScreenState();
}

class _myHomeScreenState extends State<myHomeScreen> {

  int selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  bool doctorClick = true;

  static const List<Widget> _deshBoardBottomScreen = <Widget>[
    DoctorPageWidget(),
    EmergencyDoctorPageWidget(),
    MyDoctorPageWidget(),
    ProfilePageWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget()
      ),
      body: _deshBoardBottomScreen.elementAt(selectedIndex),
      floatingActionButton: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: ColorResources.white),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: ColorResources.grey,
              offset: Offset(0, 2),
              blurRadius: 1,
            )
          ]
        ),
        child: FloatingActionButton(
          onPressed: (){},
          elevation: 4,
          backgroundColor: ColorResources.primaryColor,
          child: Image.asset(AllImages.menu, color: ColorResources.white, height: 40, width: 40,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: DeshBoardWidget(onPress: _onItemTapped,),
    );
  }
}
