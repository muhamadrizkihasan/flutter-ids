import 'package:get/get.dart';
import 'package:miniproject/core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListPictureController());
    Get.lazyPut(() => DetailPictureController());
    //mendaftarkan controller agar di akses untuk global dan di inisialisaikaaaaan saat pertama kali saja
  }
}
