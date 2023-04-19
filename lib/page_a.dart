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
                    Routes.PAGEB,
                    parameters: {
                      "name": "Budyanto",
                      "age": 24.toString(),
                    },
                  ),
                  child: const Text("Send Parameters to B"),
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
