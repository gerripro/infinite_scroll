import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

typedef Deserializer<TInput, TOutput> = TOutput Function(TInput input);
typedef JsonDeserializer<TOutput> = Deserializer<Map<String, dynamic>, TOutput>;

@lazySingleton
class NonAuthClient {
  final Dio _http;

  NonAuthClient({required Dio http}) : _http = http;

  Future<T> get<T>(
      {required String url,
      Map<String, dynamic>? queryParameters,
      JsonDeserializer<T>? deserializer}) async {
    var result = await _http.get(url, queryParameters: queryParameters);
    if (deserializer != null) return deserializer(result.data);
    return result.data;
  }
}
