import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Get.rootDelegate.toNamed(
                Routes.DATA,
                parameters: {
                  "name": "Lisa",
                  "age": 37.toString(),
                },
              ),
              child: const Text("Send Parameters"),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.toNamed(
                    Routes.DATA,
                    parameters: {
                      "name": "Budyanto",
                      "age": 24.toString(),
                    },
                  ),
                  child: const Text("Send Parameters"),
                ),
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.toNamed(
                    Routes.DATA,
                    parameters: {
                      "name": "Lisa",
                      "age": 37.toString(),
                    },
                  ),
                  child: const Text("Send Parameters"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
