import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  static Map<String, String>? data;

  @override
  void initState() {
    super.initState();
    data = Get.rootDelegate.parameters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page B"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text("Transferred data: \nName: ${data!["name"]} \nAge:${data!["age"]}"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.offNamed(
                    Routes.PAGEA,
                    parameters: {
                      "name": "Lisa",
                      "age": 37.toString(),
                    },
                  ),
                  child: const Text("Send Parameters to A"),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () => Get.rootDelegate.offNamed(
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
