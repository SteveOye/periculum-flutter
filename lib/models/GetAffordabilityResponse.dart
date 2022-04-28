// To parse this JSON data, do
//
//     final getAffordabilityResponse = getAffordabilityResponseFromJson(jsonString);

import 'dart:convert';

GetAffordabilityResponse getAffordabilityResponseFromJson(String str) =>
    GetAffordabilityResponse.fromJson(json.decode(str));

String getAffordabilityResponseToJson(GetAffordabilityResponse data) =>
    json.encode(data.toJson());

class GetAffordabilityResponse {
  GetAffordabilityResponse({
    required this.statementKey,
    required this.dti,
    required this.loanTenure,
    required this.monthlyDisposableIncomeOrMonthlyAffordabilityAmount,
    required this.affordabilityAmount,
    required this.createdDate,
    required this.averagePredictedSalary,
    required this.averageOtherIncome,
    required this.averageMonthlyTotalExpenses,
    required this.averageMonthlyLoanRepaymentAmount,
  });

  int statementKey;
  num dti;
  num loanTenure;
  num monthlyDisposableIncomeOrMonthlyAffordabilityAmount;
  num affordabilityAmount;
  String createdDate;
  num averagePredictedSalary;
  num averageOtherIncome;
  num averageMonthlyTotalExpenses;
  num averageMonthlyLoanRepaymentAmount;

  factory GetAffordabilityResponse.fromJson(Map<String, dynamic> json) =>
      GetAffordabilityResponse(
        statementKey: json["statementKey"],
        dti: json["dti"],
        loanTenure: json["loanTenure"],
        monthlyDisposableIncomeOrMonthlyAffordabilityAmount:
            json["monthlyDisposableIncomeOrMonthlyAffordabilityAmount"],
        affordabilityAmount: json["affordabilityAmount"],
        createdDate: json["createdDate"],
        averagePredictedSalary: json["averagePredictedSalary"],
        averageOtherIncome: json["averageOtherIncome"],
        averageMonthlyTotalExpenses: json["averageMonthlyTotalExpenses"],
        averageMonthlyLoanRepaymentAmount:
            json["averageMonthlyLoanRepaymentAmount"],
      );

  Map<String, dynamic> toJson() => {
        "statementKey": statementKey,
        "dti": dti,
        "loanTenure": loanTenure,
        "monthlyDisposableIncomeOrMonthlyAffordabilityAmount":
            monthlyDisposableIncomeOrMonthlyAffordabilityAmount,
        "affordabilityAmount": affordabilityAmount,
        "createdDate": createdDate,
        "averagePredictedSalary": averagePredictedSalary,
        "averageOtherIncome": averageOtherIncome,
        "averageMonthlyTotalExpenses": averageMonthlyTotalExpenses,
        "averageMonthlyLoanRepaymentAmount": averageMonthlyLoanRepaymentAmount,
      };
}
