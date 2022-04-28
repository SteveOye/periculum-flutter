// To parse this JSON data, do
//
//     final transactionStatementResponse = transactionStatementResponseFromJson(jsonString);

import 'dart:convert';

TransactionStatementResponse transactionStatementResponseFromJson(String str) =>
    TransactionStatementResponse.fromJson(json.decode(str));

String transactionStatementResponseToJson(TransactionStatementResponse data) =>
    json.encode(data.toJson());

class TransactionStatementResponse {
  TransactionStatementResponse({
    required this.date,
    required this.amount,
    required this.type,
    required this.description,
    required this.balance,
  });

  String date;
  num amount;
  String type;
  String description;
  double balance;

  factory TransactionStatementResponse.fromJson(Map<String, dynamic> json) =>
      TransactionStatementResponse(
        date: json["date"],
        amount: json["amount"],
        type: json["type"],
        description: json["description"],
        balance: json["balance"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "amount": amount,
        "type": type,
        "description": description,
        "balance": balance,
      };
}
