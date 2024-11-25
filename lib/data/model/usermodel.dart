class UserModel {
  final String? username;
  final String? email;
  final String? password;

  UserModel(
      {required this.email, required this.username, required this.password});

  // Convert a UserModel object to JSON
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'password': password,
      };

// Create a UserModel object from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }
}
