import 'package:apicall/controllers/controller.dart';
import 'package:apicall/models/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController custController = TextEditingController();

  @override
  void initState() {
    super.initState();

    custController.addListener(_write);
  }

  @override
  void dispose() {
    super.dispose();
    custController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Customer customer = Customer();
    final controller = Get.find<Controller>();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: custController,
                  onSubmitted: (value) =>
                      customer = controller.getCustomer(value),
                ),
              ),
              Text('${customer.customerName}', key: const Key("textKey")),
            ],
          ),
        ),
      ),
    );
  }

  void _write() {
    print("controller: ${custController.text}");
  }
}
