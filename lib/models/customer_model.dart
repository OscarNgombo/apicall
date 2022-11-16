class Customer {
  String? bILLGROUP;
  String? customerAccountNo;
  String? customerName;
  String? bOOKNO;
  String? currentStatus;
  int? lastDateOfPayment;
  double? currentBalance;

  Customer(
      {this.bILLGROUP,
      this.customerAccountNo,
      this.customerName,
      this.bOOKNO,
      this.currentStatus,
      this.lastDateOfPayment,
      this.currentBalance});

  Customer.fromJson(Map<String, dynamic> json) {
    bILLGROUP = json['BILLGROUP'];
    customerAccountNo = json['Customer Account No'];
    customerName = json['Customer Name'];
    bOOKNO = json['BOOK_NO'];
    currentStatus = json['Current Status'];
    lastDateOfPayment = json['Last date of Payment'];
    currentBalance = json['Current Balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BILLGROUP'] = bILLGROUP;
    data['Customer Account No'] = customerAccountNo;
    data['Customer Name'] = customerName;
    data['BOOK_NO'] = bOOKNO;
    data['Current Status'] = currentStatus;
    data['Last date of Payment'] = lastDateOfPayment;
    data['Current Balance'] = currentBalance;
    return data;
  }
}
