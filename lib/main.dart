import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hiepnx_timer/generated/codegen_loader.g.dart';
import 'package:hiepnx_timer/provider/theme_model.dart';
import 'package:hiepnx_timer/screens/home_screen.dart';
import 'package:hiepnx_timer/utils/configs.dart';
import 'package:hiepnx_timer/utils/language_utils.dart';
import 'package:hiepnx_timer/utils/theme_utils.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AudioPlayer.logEnabled = false;
  ThemeMode themeMode = await ThemeUtils.loadThemeMode();
  runApp(SetupLocalization(
    child: MyApp(
      themeMode: themeMode
    ),
  ));
}

class MyApp extends StatelessWidget {

  final ThemeMode themeMode;
  MyApp({ this.themeMode });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeModel(themeMode: themeMode)),
      ],
      child: Consumer<ThemeModel>(
        builder: (_, ThemeModel themeModel, child) {
          return MaterialApp(
            title: Config.APP_NAME,
            theme: ThemeUtils.lightTheme(),
            darkTheme: ThemeUtils.darkTheme(),
            themeMode: themeModel.getThemeMode(),
            home: HomeScreen(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
        },
      ),
    );
  }
}

class SetupLocalization extends StatelessWidget {

  final Widget child;
  SetupLocalization({ this.child });

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      child: child, 
      supportedLocales: LanguageUtils.locales,
      path: 'assets/translations',
      fallbackLocale: LanguageUtils.currentLocale,
      assetLoader: CodegenLoader() // CsvAssetLoader()
    );
  }
}