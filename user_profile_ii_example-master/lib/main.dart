import 'package:animated_theme_switcher/animated_theme_switcher.dart'
    show ThemeProvider;
import 'package:flutter/material.dart'
    show Builder, MaterialApp, WidgetsFlutterBinding, runApp;
import 'package:flutter/services.dart' show SystemChrome;
import 'package:user_profile_ii_example/page/profile_page.dart'
    show ProfilePage;
import 'package:user_profile_ii_example/themes.dart' show MyThemes;
import '''
package:user_profile_ii_example/utils/user_preferences.dart'''
    show UserPreferences;

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(MyApp());
}

class DeviceOrientation {
  static var portraitUp;

  static var portraitDown;
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  Future<ThemeProvider> build(BuildContext context) async {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) {
          var materialApp = MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeProvider.of(context),
            title: title,
            home: ProfilePage(),
          );
          return materialApp;
        },
      ),
    );
  }
}

mixin BuildContext {}

mixin Widget {}

class StatelessWidget {}
