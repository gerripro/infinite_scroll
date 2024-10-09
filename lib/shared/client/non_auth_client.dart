import 'package:dio/dio.dart';

typedef Deserializer<TInput, TOutput> = TOutput Function(TInput input);
typedef JsonDeserializer<TOutput> = Deserializer<Map<String, dynamic>, TOutput>;

class NonAuthClient {
  final Dio _http;

  NonAuthClient({required Dio http}) : _http = http;

  Future<T> get<T>(String url, JsonDeserializer<T>? deserializer) async {
    var result = await _http.get(url);

    if (deserializer != null) return deserializer(result.data);
    return result.data;
  }
}
