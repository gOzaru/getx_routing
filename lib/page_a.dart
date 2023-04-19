import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
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
        title: const Text("Page A"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Transferred data: \nName: ${data!["name"]} \nAge:${data!["age"]}"),
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
