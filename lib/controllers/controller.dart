import 'dart:convert';
import 'package:apicall/models/customer_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  var accountList = [];
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadCustomerData();
  }

//this method to contain customer list
  Future<void> loadCustomerData() async {
    final response = await http
        .get(Uri.parse('https://634419622dadea1175b4f5d5.mockapi.io/data'));

    if (response.statusCode == 200) {
      accountList = jsonDecode(response.body);
      isLoading.value = false;
      //print(getCustomer("7106038000"));
      update();
    } else {
      Get.snackbar('Error Loading data!', 
          'Serve responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }

  //new method query customer
  getCustomer(String accountNo) {
    // if (isLoading.isTrue) {
    //   return null;
    // }
    var cust = accountList
        .firstWhere((act) => act['Customer Account No'] == accountNo);

    Customer customer = Customer.fromJson(cust);

    return customer;
  }
}
