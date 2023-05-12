
import 'package:get/get.dart';
import 'package:sebaghar/data/model/response/video_menu_model.dart';
import 'package:sebaghar/utill/all_images.dart';

class VideoMenuRepo{
  Future<Response> getVideoMenuRepo() async{
    try{
      List<VideoMenuModel> videoMenuList = [
        VideoMenuModel(AllImages.videoMenu1),
        VideoMenuModel(AllImages.videoMenu2),
        VideoMenuModel(AllImages.videoMenu3),
        VideoMenuModel(AllImages.videoMenu4),
        VideoMenuModel(AllImages.videoMenu5),
        VideoMenuModel(AllImages.videoMenu6),
      ];
      return Response(body: videoMenuList, statusCode: 200);
    } catch(e){
      return const Response(statusCode: 500, statusText: "Data Not Found");
    }
  }
}