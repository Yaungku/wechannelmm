import 'package:wechannelmm/src/ui/pages/history.dart';
import 'package:wechannelmm/src/ui/pages/home.dart';
import 'package:wechannelmm/src/ui/pages/login.dart';
import 'package:wechannelmm/src/ui/pages/profile.dart';
import 'package:wechannelmm/src/ui/pages/register.dart';
import 'package:wechannelmm/src/ui/pages/shoppingcart.dart';

var appRoutes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ShopCartPage.routeName: (context) => ShopCartPage(),
  HistoryPage.routeName: (context) => HistoryPage(),
  ProfilePage.routeName: (context) => ProfilePage()
};
