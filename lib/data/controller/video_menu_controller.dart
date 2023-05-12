import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sebaghar/data/model/request/VideoMenuRepo.dart';
import 'package:sebaghar/data/model/response/video_menu_model.dart';

class VideoMenuController extends GetxController implements GetxService{
  VideoMenuRepo videoMenuRepo = VideoMenuRepo();

  List<VideoMenuModel> _videoMenuList = [];
  List<VideoMenuModel> get videoMenuList => _videoMenuList;

  Future<Response> getVideoMenuListData() async{
    Response apiResponse = await videoMenuRepo.getVideoMenuRepo();
    if(apiResponse.statusCode == 200){
      _videoMenuList = [];
      _videoMenuList.addAll(apiResponse.body);
    } else{
      debugPrint("Data Not Found");
    }
    update();
    return apiResponse;
  }
}