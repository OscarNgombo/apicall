import 'dart:convert';

import 'package:apicall/models/customer_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  var accountList = <CustomerModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCustomerData();
  }

  Future<void> fetchCustomerData() async {
    final response = await http
        .get(Uri.parse('https://634419622dadea1175b4f5d5.mockapi.io/data'));

    if (response.statusCode == 200) {
      CustomerModel customerModel =
          CustomerModel.fromJson(jsonDecode(response.body));
      accountList.add(CustomerModel(
        customerAccountNo: customerModel.customerAccountNo,
        bILLGROUP: customerModel.bILLGROUP,
        bOOKNO: customerModel.bOOKNO,
        customerName: customerModel.customerName,
        currentStatus: customerModel.currentStatus,
        currentBalance: customerModel.currentBalance,
        lastDateOfPayment: customerModel.lastDateOfPayment,
      ));
      isLoading.value = false;
      update();
    } else {
      Get.snackbar('Error Loading data!',
          'Serve responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}
