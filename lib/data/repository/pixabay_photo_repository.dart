import 'package:image_search_day49/data/data_source/pixabay_api.dart';
import 'package:image_search_day49/data/mapper/pixabay_mapper.dart';
import 'package:image_search_day49/domain/model/photo.dart';
import 'package:image_search_day49/domain/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final resultDto = await _api.getImages(query);

    if (resultDto.hits == null) {
      return [];
    }
    return resultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
