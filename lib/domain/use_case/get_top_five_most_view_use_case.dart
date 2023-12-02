import 'package:image_search_day49/domain/model/photo.dart';
import 'package:image_search_day49/domain/repository/photo_repository.dart';

class GetTopFiveMostViewdImagesUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewdImagesUseCase(this._repository);
  Future<List<Photo>> execute(String query) async {
    final photos = await _repository.getPhotos(query);

    photos.sort((a, b) => -a.views.compareTo(b.views));
    return photos.take(10).toList();
  }
}
