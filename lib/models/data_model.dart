class DataModel {
  String name;
  int age;
  String occupation;
  String gender;
  String maritalStatus;
  int income;
  String expenses;
  int creditScore;

  // Constructor
  DataModel({
    required this.name,
    required this.age,
    required this.occupation,
    required this.gender,
    required this.maritalStatus,
    required this.income,
    required this.expenses,
    required this.creditScore,
  });

  // Factory constructor to create an instance from a map
  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      name: map['name'] as String,
      age: map['age'] as int,
      occupation: map['occupation'] as String,
      gender: map['gender'] as String,
      maritalStatus: map['maritalStatus'] as String,
      income: map['income'] as int,
      expenses: map['expenses'] as String,
      creditScore: map['creditScore'] as int,
    );
  }

  // Method to convert the instance to a map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'occupation': occupation,
      'gender': gender,
      'maritalStatus': maritalStatus,
      'income': income,
      'expenses': expenses,
      'creditScore': creditScore,
    };
  }

  @override
  String toString() {
    return 'DataModel(name: $name, age: $age, occupation: $occupation, gender: $gender, maritalStatus: $maritalStatus, income: $income, expenses: $expenses, creditScore: $creditScore)';
  }
}
