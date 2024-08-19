class PersonalDetailsModel {
  String name;
  int age;
  int aadhar;
  String email;
  String occupation;
  String gender;
  String maritalStatus;
  bool child;
  bool home;
  bool car;

  // Constructor
  PersonalDetailsModel({
    required this.name,
    required this.age,
    required this.aadhar,
    required this.email,
    required this.occupation,
    required this.gender,
    required this.maritalStatus,
    required this.child,
    required this.home,
    required this.car
  });

  // Factory constructor to create an instance from a map
  factory PersonalDetailsModel.fromMap(Map<String, dynamic> map) {
    return PersonalDetailsModel(
      name: map['name'] as String,
      age: map['age'] as int,
      aadhar: map['aadhar'] as int,
      email: map['email'] as String,
      occupation: map['occupation'] as String,
      gender: map['gender'] as String,
      maritalStatus: map['maritalStatus'] as String,
      child:  map['child'] as bool,
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
      'email': email,
      'occupation': occupation,
      'gender': gender,
      'maritalStatus': maritalStatus,
      'child': child,
      'home': home,
      'car': car
    };
  }

  @override
  String toString() {
    return 'PersonalDetails(name: $name, age: $age,aadhar: $aadhar, email: $email, occupation: $occupation, gender: $gender, maritalStatus: $maritalStatus, child: $child, home: $home, car: $car)';
  }
}
