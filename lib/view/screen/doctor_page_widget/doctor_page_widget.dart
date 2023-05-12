import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebaghar/data/controller/video_menu_controller.dart';
import 'package:sebaghar/data/model/response/home_menu_model.dart';
import 'package:sebaghar/utill/all_images.dart';
import 'package:sebaghar/utill/color_resources.dart';
import 'package:sebaghar/view/screen/doctor_page_widget/widget/menu_widget.dart';

class DoctorPageWidget extends StatefulWidget {
  const DoctorPageWidget({Key? key}) : super(key: key);

  @override
  State<DoctorPageWidget> createState() => _DoctorPageWidgetState();
}

class _DoctorPageWidgetState extends State<DoctorPageWidget> {
  
  List<HomeMenuModel> homeMenuList1 = [
    HomeMenuModel(menuImage: AllImages.doctorMenu, menuTitle: "ডাক্তার", onTab:  const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.appointmentMenu, menuTitle: "অ্যাপয়েন্টমেন্ট", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.prescriptionMenu, menuTitle: "প্রেসক্রিপশন", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.emergencyDoctorMenu, menuTitle: "জরুরী ডাক্তার", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.helthPlanMenu, menuTitle: "হেলথ প্ল্যান", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.findNurseMenu, menuTitle: "নার্স খুঁজুন ", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.serviceShopMenu, menuTitle: "সেবা শপ", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.creditCardMenu, menuTitle: "ক্রেডিট যুক্ত করুন", onTab: const Center(child: Text(AppText.placeholder))),
  ];

  List<HomeMenuModel> homeMenuList2 = [
    HomeMenuModel(menuImage: AllImages.insuranceMenu, menuTitle: "বীমা", onTab:  const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.diagnosticMenu, menuTitle: "ডায়াগনস্টিক", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.bloodBankMenu, menuTitle: "ব্লাড ব্যাংক", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.familyMenu, menuTitle: "পরিবার", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.theDoctorAskMenu, menuTitle: "ডাক্তারকে জিজ্ঞাসা করুন", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.videoMenu, menuTitle: "ভিডিও ", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.familyMenu, menuTitle: "ফার্মেসী", onTab: const Center(child: Text(AppText.placeholder))),
    HomeMenuModel(menuImage: AllImages.menuMenu, menuTitle: "আরো দেখুন", onTab: const Center(child: Text(AppText.placeholder))),
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  List imageList = [
    {'id': 1, 'image_path': "assets/images/slider1.jpg"},
    {'id': 2, 'image_path': "assets/images/slide2.jpg"},
    {'id': 3, 'image_path': "assets/images/slider3.jpg"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(VideoMenuController());
    Get.find<VideoMenuController>().getVideoMenuListData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<VideoMenuController>(
      init: VideoMenuController(),
        builder: (videoItem){
        return Scaffold(
          backgroundColor: ColorResources.backGroundColor,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                /// ------------->>>>>>>>> Menu 1 <<<<<<<<----------------
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: SizedBox(
                    // color: Colors.yellow,
                    height: size.height / 3.2,
                    width: size.width,
                    child: GridView.builder(
                        itemCount: homeMenuList1.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 15,
                          mainAxisExtent: size.height / 7,
                        ),
                        itemBuilder: (BuildContext context, int index){
                          return MenuWidget(homeMenuModel: homeMenuList1[index],);
                        }),
                  ),
                ),
                /// ------------->>>>>>>>> Carousel Slider <<<<<<<<----------------
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15,),
                      child: SizedBox(
                        height: 120,
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CarouselSlider(
                              items: imageList.map(
                                    (item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                ),
                              ).toList(),
                              carouselController: carouselController,
                              options: CarouselOptions(
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  autoPlay: true,
                                  aspectRatio: 2,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason){
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  }
                              )),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      right: 50,
                      bottom: 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry){
                          // print(entry);
                          // print(entry.key);
                          return GestureDetector(
                            onTap: () => carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key? 7 : 7,
                              height: 7,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? ColorResources.red : ColorResources.white
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                /// ------------->>>>>>>>> Menu 2 <<<<<<<<----------------
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: SizedBox(
                    // color: Colors.yellow,
                    height: size.height / 3.2,
                    width: size.width,
                    child: GridView.builder(
                        itemCount: homeMenuList2.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 15,
                          mainAxisExtent: size.height / 7,
                        ),
                        itemBuilder: (BuildContext context, int index){
                          return MenuWidget(homeMenuModel: homeMenuList2[index],);
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: SizedBox(
                    height: 150,
                    width: size.width,
                    child: ListView.builder(
                        itemCount: videoItem.videoMenuList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index){
                          return Row(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 260,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("${videoItem.videoMenuList[index].image}", fit: BoxFit.cover,),
                                ),
                              ),
                              const SizedBox(width: 10,)
                            ],
                          );
                        }),
                  ),
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        );
    });
  }
}

class AppText {
  static const String placeholder = "Not implemented! Check Send money.";
}