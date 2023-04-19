import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  static Map<String, String>? data;

  @override
  void initState() {
    super.initState();
    data = Get.rootDelegate.parameters;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Transferred data: \nName: ${data!["name"]} \nAge:${data!["age"]}"),
    );
  }
}
