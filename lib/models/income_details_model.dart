class IncomeDetailsModel {
  int income;
  String expenses;
  int creditScore;

  // Constructor
  IncomeDetailsModel({
    required this.income,
    required this.expenses,
    required this.creditScore,
  });

  // Factory constructor to create an instance from a map
  factory IncomeDetailsModel.fromMap(Map<String, dynamic> map) {
    return IncomeDetailsModel(
      income: map['income'] as int,
      expenses: map['expenses'] as String,
      creditScore: map['creditScore'] as int,
    );
  }

  // Method to convert the instance to a map
  Map<String, dynamic> toMap() {
    return {
      'income': income,
      'expenses': expenses,
      'creditScore': creditScore,
    };
  }

  @override
  String toString() {
    return 'IncomeDetails(income: $income, expenses: $expenses, creditScore: $creditScore)';
  }
}
