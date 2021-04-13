# flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n lib/localizations.dart lib/l10n/intl_*.arb
flutter pub get
flutter pub run easy_localization:generate -s assets/translations -f json -o codegen_loader.g.dart -O lib/generated
flutter pub run easy_localization:generate -s assets/translations -f keys -o locale_keys.g.dart -O lib/generated