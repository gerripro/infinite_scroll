import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';
import 'package:infinite_scroll/shared/client/non_auth_client.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PicturesClient extends NonAuthClient {
  PicturesClient({required super.http});

  Future<List<PictureDto>> getPaginatedPicList(
      {int page = 1, int size = 20}) async {
    var dioResp = await get(
        url: '/api/', queryParameters: {"page": page, "per_page": size});
    var hits = dioResp['hits'] as List;
    return hits
        .map((dynamic i) => PictureDto.fromJson(i as Map<String, dynamic>))
        .toList();
  }
}
