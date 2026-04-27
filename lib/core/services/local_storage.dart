import '../../features/favorites/domain/favorite_verse.dart';

class LocalStorageService {
  LocalStorageService._();

  static final LocalStorageService instance = LocalStorageService._();

  final List<FavoriteVerse> _favorites = <FavoriteVerse>[];

  List<FavoriteVerse> getFavorites() => List<FavoriteVerse>.unmodifiable(_favorites);

  void saveFavorites(List<FavoriteVerse> favorites) {
    _favorites
      ..clear()
      ..addAll(favorites);
  }
}
