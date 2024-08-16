class PersonalDetailsModel {
  String name;
  int age;
  String occupation;
  String gender;
  String maritalStatus;

  // Constructor
  PersonalDetailsModel({
    required this.name,
    required this.age,
    required this.occupation,
    required this.gender,
    required this.maritalStatus,
  });

  // Factory constructor to create an instance from a map
  factory PersonalDetailsModel.fromMap(Map<String, dynamic> map) {
    return PersonalDetailsModel(
      name: map['name'] as String,
      age: map['age'] as int,
      occupation: map['occupation'] as String,
      gender: map['gender'] as String,
      maritalStatus: map['maritalStatus'] as String,
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
    };
  }

  @override
  String toString() {
    return 'PersonalDetails(name: $name, age: $age, occupation: $occupation, gender: $gender, maritalStatus: $maritalStatus)';
  }
}
