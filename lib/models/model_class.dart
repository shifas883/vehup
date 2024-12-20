class LoginRequest {
  final String username;
  final String password;

  LoginRequest({required this.username, required this.password});

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
  };
}



class LoginResponse {
  final User user;
  final String token;

  LoginResponse({
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      user: User.fromJson(json['data']),
      token: json['token'],
    );
  }
}


class User {
  final int id;
  final int roleId;
  final String name;
  final String email;
  final String? emailVerifiedAt;
  final String mobile;
  final String? profileImage;
  final String? location;
  final double? latitude;
  final double? longitude;
  final String status;
  final int isActive;
  final int createdBy;
  final int updatedBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.roleId,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.mobile,
    this.profileImage,
    this.location,
    this.latitude,
    this.longitude,
    required this.status,
    required this.isActive,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      roleId: json['role_id'],
      name: json['name'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'],
      mobile: json['mobile'],
      profileImage: json['profile_image'],
      location: json['location'],
      latitude: json['latitude'] != null ? json['latitude'].toDouble() : null,
      longitude: json['longitude'] != null ? json['longitude'].toDouble() : null,
      status: json['status'],
      isActive: json['is_active'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}



