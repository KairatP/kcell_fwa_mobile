class UserModel {
  final int id;
  final String login;
  final String createdAt; 
  final String updatedAt; 
  final String username;
  final String position;
  final String phone; 
  final String email;

  UserModel({
    required this.id, 
    required this.login, 
    required this.createdAt, 
    required this.updatedAt, 
    required this.username, 
    required this.position, 
    required this.phone, 
    required this.email, 
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 1,
      login: json['login'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '', // Provide default value if null
      updatedAt: json['updated_at'] as String? ?? '', // Provide default value if null
      username: json['username'] as String? ?? '', // Provide default value if null
      position: json['position'] as String? ?? '',
      phone: json['phone'] as String? ?? '', // Provide default value if null
      email: json['email'] as String? ?? '', // Provide default value if null
    );
  }
}