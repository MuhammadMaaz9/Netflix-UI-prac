import 'package:get/get.dart';
import 'package:practice_ui/models/movie_models.dart';
import 'package:practice_ui/services/services.dart';

class Screen1Controller extends GetxController {
  RxList movieData = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  getdata() async {
    final movie = await ApiService().getdata();

    movieData.value = movie!.results;
  }
}
