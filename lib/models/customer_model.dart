class CustomerModel {
  final String? bILLGROUP, customerAccountNo, customerName, bOOKNO, currentStatus;
 final  int? lastDateOfPayment;
  final double? currentBalance;

  CustomerModel(
      { required this.bILLGROUP,
        required this.customerAccountNo,
        required this.customerName,
        required this.bOOKNO,
        required this.currentStatus,
        required this.lastDateOfPayment,
        required this.currentBalance});

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
      return CustomerModel(
     bILLGROUP : json['BILLGROUP'],
     customerAccountNo : json['Customer Account No'],
     customerName : json['Customer Name'],
     bOOKNO : json['BOOK_NO'],
     currentStatus : json['Current Status'],
     lastDateOfPayment : json['Last date of Payment'],
     currentBalance : json['Current Balance'],);
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['BILLGROUP'] = this.bILLGROUP;
  //   data['Customer Account No'] = this.customerAccountNo;
  //   data['Customer Name'] = this.customerName;
  //   data['BOOK_NO'] = this.bOOKNO;
  //   data['Current Status'] = this.currentStatus;
  //   data['Last date of Payment'] = this.lastDateOfPayment;
  //   data['Current Balance'] = this.currentBalance;
  //   return data;
  // }
}
