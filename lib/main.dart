import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      defaultTransition: Transition.noTransition,
      getPages: AppPages.pages,
      routerDelegate: AppRouterDelegate(),
      scrollBehavior: WegeScrollBehaviour(),
      title: "Prototype 01",
    );
  }
}
