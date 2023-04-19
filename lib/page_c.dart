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
