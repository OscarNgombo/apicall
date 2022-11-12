import 'package:apicall/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Controller>();
    return Scaffold(
      body: Obx( 
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Account: ${controller.accountList[0].customerAccountNo}'),
                    Text('Name: ${controller.accountList[0].customerName}'),
                    Text('Status: ${controller.accountList[0].currentStatus}'),
                    Text(
                        'Balance: ${controller.accountList[0].currentBalance}'),
                    Text(
                        'Last Payment Date: ${controller.accountList[0].lastDateOfPayment}'),
                  ],
                ),
              ),
      ),
    );
  }
}
