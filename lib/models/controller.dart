import 'dart:developer';
import 'package:get/get.dart';

import 'photos_model.dart';
import 'service.dart';

class AppController extends GetxController {
  RxList<PhotosModel> photos = RxList();
  RxBool isLoading = true.obs;
  RxString orderBy = "latest".obs;
  RxString apiKey = "N__PKKjjE_rGt2fsn4xs_HXE0ajm7pLn5MJxUDMIHCk".obs;
  var selectedIndex = 0.obs;
  List<String> orders = [
    "latest",
    "popular",
    "oldest",
    "views",
  ];

  /// Get Picture
  getPictureData() async {
    isLoading.value = true;
    var response = await DioService.getURL(
        "https://api.unsplash.com/photos/?per_page=30&order_by=${orderBy.value}&client_id=$apiKey");
    photos = RxList();
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        photos.add(PhotosModel.fromJson(element));
      });
      isLoading.value = false;
    }

    log(response.statusCode);
  }

  /// changing order value
  ordersFunc(String newVal) {
    orderBy.value = newVal;
    getPictureData();
  }

  @override
  void onInit() {
    getPictureData();
    super.onInit();
  }
}