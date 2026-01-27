import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../models/country_model.dart';
import '../providers/favorites_provider.dart';
import '../utils/constants.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final l10n = AppLocalizations.of(context)!;

    // Find dish objects from names
    final favoriteDishes = <Dish>[];
    for (var country in countries) {
      for (var dish in country.dishes) {
        if (favorites.contains(dish.name)) {
          favoriteDishes.add(dish);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.favorites,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: favoriteDishes.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.noFavorites,
                    style: AppTextStyles.headingMedium.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favoriteDishes.length,
              itemBuilder: (context, index) {
                final dish = favoriteDishes[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    decoration: AppDecorations.cardDecoration(context),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      leading: Text(
                        dish.emoji,
                        style: const TextStyle(fontSize: 40),
                      ),
                      title: Text(
                        dish.name,
                        style: AppTextStyles.headingMedium.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        dish.description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          color: AppColors.accent,
                        ),
                        onPressed: () {
                          ref
                              .read(favoritesProvider.notifier)
                              .toggleFavorite(dish.name);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
