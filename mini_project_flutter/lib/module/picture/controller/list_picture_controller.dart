import 'package:get/get.dart';
import 'package:miniproject/core.dart';

class ListPictureController extends GetxController {
  var pictures = [].obs;
  var isLoading = true.obs;
  int limit = 10;
  int page = 1;

  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    isLoading.value = true;
    try {
      pictures.value = await PictureService().fetchPictures(limit: limit, page: page);
    } finally {
      isLoading.value = false;
    }
  }
}
