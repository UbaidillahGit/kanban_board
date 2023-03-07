import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class SecureStorageRepository {
  void setUserDisplayName(String displayName);

  void setUserEmail(String email);

  void setUserPhotoUrl(String url);

  void setCurrentOpenedProject(String projectId);

  Future<void> setClearAll();

  Future<String?> getUserDisplayName();

  Future<String?> getUserEmail();

  Future<String?> getUserPhotoUrl();

  Future<String?> getCurrentOpenedProject();
}

@LazySingleton(as: SecureStorageRepository)
class LocalSecureStorage implements SecureStorageRepository {
  static const _storage = FlutterSecureStorage();
  static const String _userDisplayName = 'user_display_name';
  static const String _userEmail = 'user_email';
  static const String _userPhotoUrl = 'user_photo_url';
  static const String _currentOpenedProject = 'current_opened_project';

  String? _userEmailValue;
  String? get userEmail => _userEmailValue;

  // LocalSecureStorage._();

  @override
  void setUserDisplayName(String displayName) async => 
      await _storage.write(key: _userDisplayName, value: displayName);

  @override 
  setUserEmail(String email) async => 
      await _storage.write(key: _userEmail, value: email);
  
  @override
  setUserPhotoUrl(String url) async => 
      await _storage.write(key: _userPhotoUrl, value: url);

  @override
  setCurrentOpenedProject(String projectId) async => 
      await _storage.write(key: _currentOpenedProject, value: projectId);

   @override
   setClearAll() async => _storage.deleteAll();   

  @override
  Future<String> getUserDisplayName() async =>
      await _storage.read(key: _userDisplayName) ?? '';

  @override
  Future<String?> getUserEmail() async =>
      await _storage.read(key: _userEmail);
  
  @override
  Future<String> getUserPhotoUrl() async =>
      await _storage.read(key: _userPhotoUrl) ?? '';

  @override
  Future<String> getCurrentOpenedProject() async =>
      await _storage.read(key: _currentOpenedProject) ?? '';

}
