import 'package:firstapp/pages/edit_profile_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => const MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
