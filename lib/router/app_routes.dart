import 'package:flutter/material.dart';

import 'package:components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'ListView 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'ListView 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'cards', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated container', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': (context) => const HomeScreen(),
  //       'listview1': (context) => const ListView1Screen(),
  //       'listview2': (context) => const ListView2Screen(),
  //       'alert': (context) => const AlertScreen(),
  //       'cards': (context) => const CardScreen(),
  //     };

  static Route<dynamic> onGenerateRoute( RouteSettings settings ) {
    print(settings);
    return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
}