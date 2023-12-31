import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/not_found_screen.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const String home = 'home';
  static const String listView1 = 'listview1';
  static const String listView2 = 'listview2';
  static const String alert = 'alert';
  static const String card = 'card';
  static const String avatar = 'avatar';
  static const String animated = 'animated';
  static const String input = 'input';
  static const String slider = 'slider';
  static const String listViewBuilder = 'listview-builder';

  static const String initialRoute = AppRoutes.home;
  static const String notFound = '/not-found';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: AppRoutes.listView1,
        icon: Icons.list,
        name: 'List View 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: AppRoutes.listView2,
        icon: Icons.list,
        name: 'List View 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: AppRoutes.alert,
        icon: Icons.notifications,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: AppRoutes.card,
        icon: Icons.credit_card,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: AppRoutes.avatar,
        icon: Icons.account_circle,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: AppRoutes.animated,
        icon: Icons.animation,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: AppRoutes.input,
        icon: Icons.edit_calendar_rounded,
        name: 'Input',
        screen: const InputScreen()),
    MenuOption(
        route: AppRoutes.slider,
        icon: Icons.slideshow,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: AppRoutes.listViewBuilder,
        icon: Icons.list,
        name: 'List View Builder',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    routes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      routes[option.route] = (context) => option.screen;
    }

    return routes;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const NotFoundScreen(),
    );
  }
}
