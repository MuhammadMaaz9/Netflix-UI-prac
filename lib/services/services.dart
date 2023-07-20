import 'package:practice_ui/models/movie_models.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Movie?> getdata() async {
    try {
      var url = Uri.parse(
          'https://api.themoviedb.org/3/trending/all/day?api_key=39cf98d7db1ad3069227393fa6315d10');

      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final movie = movieFromJson(response.body);
        //moviedata = movie.results;

        return movie;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
