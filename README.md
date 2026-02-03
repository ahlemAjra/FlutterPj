# Culinary World

## Author
- Name: Ahlem Ajra
- Matricola: 345323

## Project Title
Culinary World - Explore Countries & Their Cuisines

## Overview

Culinary World is a Flutter app that lets users discover countries and their traditional cuisines. Users can browse countries, view detailed information about each one, save favorites, and customize settings like language (English/French) and theme (light/dark). The app includes login and signup features, and all data is saved locally on the device.

## User Experience

**Login:** Open the app and login with your account, or create a new one.

![Login Screen](assets/01_login_screen.png)

**Forgot Password:** Tap "Forgot Password?" on the login screen to reset your password.

![Forgot Password](assets/08_reset_password.png)

**Browse Countries:** The main screen shows a list of countries with their flags.

![Main Screen](assets/07_main_screen.png)

**Popular Dishes:** Tap a country to see its popular dishes with descriptions.

![Popular Dishes](assets/09_popular_dishes.png)

**View Details:** Tap a dish to see its full recipe and ingredients.

![Country Details](assets/04_dish_detail.png)

**Favorites:** Tap the heart to save countries you like.

![Favorites](assets/05_favorites_screen.png)

**Settings:** Change language or theme here.

![Settings](assets/06_settings_screen.png)

## Technology

**Packages used:**
- `flutter_riverpod` - for state management (sharing data between screens)
- `hive` and `hive_flutter` - for saving data locally on the device
- `google_fonts` - for better looking text
- `intl` and `flutter_localizations` - for multi-language support

**Data storage:** The app uses Hive to store favorites, settings, and user data locally. No server needed.

**Issues I faced:**
- Layout overflow problems when content was too long. Fixed using `SingleChildScrollView` and `Expanded` widgets.
- Setting up translations with `.arb` files took some trial and error to configure correctly.
