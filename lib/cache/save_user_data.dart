import 'package:shared_preferences/shared_preferences.dart';
import '../models/model_class.dart';

Future<void> saveLoginData(LoginResponse loginResponse) async {
  try {
    final prefs = await SharedPreferences.getInstance();

    // Save token
    await prefs.setString('token', loginResponse.token);

    // Save user details
    final user = loginResponse.user;
    await prefs.setInt('id', user.id);
    await prefs.setInt('roleId', user.roleId);
    await prefs.setString('name', user.name);
    await prefs.setString('email', user.email);
    await prefs.setString('emailVerifiedAt', user.emailVerifiedAt ?? '');
    await prefs.setString('mobile', user.mobile);
    await prefs.setString('profileImage', user.profileImage ?? '');
    await prefs.setString('location', user.location ?? '');
    await prefs.setDouble('latitude', user.latitude ?? 0.0);
    await prefs.setDouble('longitude', user.longitude ?? 0.0);
    await prefs.setString('status', user.status);
    await prefs.setInt('isActive', user.isActive);
    await prefs.setInt('createdBy', user.createdBy);
    await prefs.setInt('updatedBy', user.updatedBy);
    await prefs.setString('createdAt', user.createdAt.toIso8601String());
    await prefs.setString('updatedAt', user.updatedAt.toIso8601String());

    print("Login data saved successfully.");
  } catch (e) {
    print("Error saving login data: $e");
    throw Exception("Failed to save login data.");
  }
}

Future<LoginResponse?> getLoginData() async {
  try {
    final prefs = await SharedPreferences.getInstance();

    // Retrieve token
    final token = prefs.getString('token');
    if (token == null || token.isEmpty) {
      return null; // No token means user is not logged in
    }

    // Retrieve user details
    final user = User(
      id: prefs.getInt('id') ?? 0, // Default to 0 if null
      roleId: prefs.getInt('roleId') ?? 0, // Default to 0 if null
      name: prefs.getString('name') ?? '',
      email: prefs.getString('email') ?? '',
      emailVerifiedAt: prefs.getString('emailVerifiedAt'),
      mobile: prefs.getString('mobile') ?? '',
      profileImage: prefs.getString('profileImage'),
      location: prefs.getString('location'),
      latitude: prefs.getDouble('latitude') ?? 0.0,
      longitude: prefs.getDouble('longitude') ?? 0.0,
      status: prefs.getString('status') ?? '',
      isActive: prefs.getInt('isActive') ?? 0, // Default to 0 if null
      createdBy: prefs.getInt('createdBy') ?? 0, // Default to 0 if null
      updatedBy: prefs.getInt('updatedBy') ?? 0, // Default to 0 if null
      createdAt: _parseDateTime(prefs.getString('createdAt')),
      updatedAt: _parseDateTime(prefs.getString('updatedAt')),
    );

    return LoginResponse(user: user, token: token);
  } catch (e) {
    print("Error retrieving login data: $e");
    return null;
  }
}

// Helper function for DateTime parsing
DateTime _parseDateTime(String? dateString) {
  try {
    return DateTime.parse(dateString ?? DateTime.now().toIso8601String());
  } catch (e) {
    print("Error parsing date: $e");
    return DateTime.now();
  }
}



void checkLoginStatus() async {
  final loginData = await getLoginData();
  if (loginData != null) {
    print('User is logged in:');
    print('Name: ${loginData.user.name}');
    print('Email: ${loginData.user.email}');
    print('Token: ${loginData.token}');
  } else {
    print('User is not logged in.');
  }
}


Future<void> clearLoginData() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    print("Login data cleared successfully.");
  } catch (e) {
    print("Error clearing login data: $e");
    throw Exception("Failed to clear login data.");
  }
}

