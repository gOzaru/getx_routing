// ignore_for_file: constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/home_page.dart';
import 'package:getx_routing/page_a.dart';
import 'package:getx_routing/page_b.dart';
import 'package:getx_routing/page_c.dart';

abstract class Routes {
  static const HOME = '/home';
  static const PAGEA = '/page-a';
  static const PAGEB = '/page-b';
  static const PAGEC = '/page-c';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.PAGEA,
      page: () => const PageA(),
    ),
    GetPage(
      name: Routes.PAGEB,
      page: () => const PageB(),
    ),
    GetPage(
      name: Routes.PAGEC,
      page: () => const PageC(),
    ),
  ];
}

class AppRouterDelegate extends GetDelegate {
  GetNavConfig get prevRoute => history.length < 2 ? history.last : history[history.length - 2];

  @override
  Future<GetNavConfig> popHistory() async {
    final result = prevRoute;
    Get.rootDelegate.offNamed(prevRoute.currentPage!.name);
    return result;
  }

  //Call it like this: Get.rootDelegate.popHistory();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null ? [currentConfiguration!.currentPage!] : [GetNavConfig.fromRoute(Routes.HOME)!.currentPage!],
    );
  }
}

class WegeScrollBehaviour extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        // etc.
      };
}
