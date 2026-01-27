import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesNotifier extends StateNotifier<List<String>> {
  FavoritesNotifier() : super([]) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final box = await Hive.openBox<String>('favorites');
    state = box.values.toList();
  }

  Future<void> toggleFavorite(String dishName) async {
    final box = await Hive.openBox<String>('favorites');
    
    if (state.contains(dishName)) {
      // Remove
      final keyToDelete = box.keys.firstWhere((k) => box.get(k) == dishName, orElse: () => null);
      if (keyToDelete != null) {
        await box.delete(keyToDelete);
      }
      state = box.values.toList();
    } else {
      // Add
      await box.add(dishName);
      state = box.values.toList();
    }
  }

  bool isFavorite(String dishName) {
    return state.contains(dishName);
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<String>>((ref) {
  return FavoritesNotifier();
});
