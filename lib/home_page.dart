import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Get.rootDelegate.toNamed(
                Routes.PAGEA,
                parameters: {
                  "name": "Lisa",
                  "age": 37.toString(),
                },
              ),
              child: const Text("Send Parameters to A"),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.toNamed(
                    Routes.PAGEB,
                    parameters: {
                      "name": "Budyanto",
                      "age": 24.toString(),
                    },
                  ),
                  child: const Text("Send Parameters to B"),
                ),
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.toNamed(
                    Routes.PAGEC,
                    parameters: {
                      "name": "Angeline",
                      "age": 28.toString(),
                    },
                  ),
                  child: const Text("Send Parameters to C"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
