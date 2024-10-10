import 'package:injectable/injectable.dart';

@singleton
class AppConfiguration {
  final apiUrl = const String.fromEnvironment("API_URL");
  final apiKey = const String.fromEnvironment("API_KEY");
}