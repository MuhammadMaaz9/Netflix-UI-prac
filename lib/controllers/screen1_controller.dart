import 'package:get/get.dart';
import 'package:practice_ui/models/movie_models.dart';
import 'package:practice_ui/services/services.dart';

class Screen1Controller extends GetxController {
  RxList<Result> movieData = <Result>[].obs;

  @override
  void onInit() {
    super.onInit();
    getdata();
  }

  getdata() async {
    var movie = await ApiService().getdata();
    if (movie != null) {
      movieData.value = movie.results;
      print('data: ${movieData}');
    } else {
      // Handle the case when the API response is null
      print('no data');
    }

    //movieData.value = movie!.results;
    //print(' data : ${movieData!.results.length}');
  }
}

// import 'package:get/get.dart';
// import 'package:practice_ui/models/movie_models.dart';
// import 'package:practice_ui/services/services.dart';

// class Screen1Controller extends GetxController {
//   RxList movieData = [].obs;

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     getdata();
//   }

//   getdata() async {
//     final movie = await ApiService().getdata();

//     movieData.value = movie!.results;
//   }
// }
