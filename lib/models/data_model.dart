class DataModel {
  String name;
  int age;
  int aadhar;
  String occupation;
  String gender;
  String maritalStatus;
  int income;
  String expenses;
  int creditScore;
  bool child;
  bool home;
  bool car;

  // Constructor
  DataModel({
    required this.name,
    required this.age,
    required this.aadhar,
    required this.occupation,
    required this.gender,
    required this.maritalStatus,
    required this.income,
    required this.expenses,
    required this.creditScore,
    required this.child,
    required this.home,
    required this.car
  });

  // Factory constructor to create an instance from a map
  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      name: map['name'] as String,
      age: map['age'] as int,
      aadhar: map['aadhar'] as int,
      occupation: map['occupation'] as String,
      gender: map['gender'] as String,
      maritalStatus: map['maritalStatus'] as String,
      income: map['income'] as int,
      expenses: map['expenses'] as String,
      creditScore: map['creditScore'] as int,
      child: map['child'] as bool,
      home: map['home'] as bool,
      car: map['car'] as bool
    );
  }

  // Method to convert the instance to a map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'aadhar': aadhar,
      'occupation': occupation,
      'gender': gender,
      'maritalStatus': maritalStatus,
      'income': income,
      'expenses': expenses,
      'creditScore': creditScore,
      'child': child,
      'home': home,
      'car': car
    };
  }

  @override
  String toString() {
    return 'DataModel(name: $name, age: $age, aadhar:$aadhar, occupation: $occupation, gender: $gender, maritalStatus: $maritalStatus, income: $income, expenses: $expenses, creditScore: $creditScore, child: $child, home: $home, car: $car)';
  }
}
