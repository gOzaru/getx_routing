import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/routes.dart';

class PageC extends StatefulWidget {
  const PageC({super.key});

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
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
        title: const Text("Page C"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Transferred data: \nName: ${data!["name"]} \nAge:${data!["age"]}"),
            Row(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
