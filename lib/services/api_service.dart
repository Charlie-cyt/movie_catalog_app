import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Endpoint de películas (puedes ajustarlo según la API que utilices)
  static const String _url = 'https://api.themoviedb.org/3/movie/popular?api_key=TU_API_KEY';

  Future<List<dynamic>> fetchMovies() async {
    try {
      final response = await http.get(Uri.parse(_url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['results'];
      } else {
        throw Exception('Error en el servidor: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error al conectar con la red: $e');
    }
  }
}