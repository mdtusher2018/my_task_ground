import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/storage_key.dart';

/// ==========================================================
/// LOCAL STORAGE SERVICE
/// ==========================================================
///
/// Singleton service for managing local and secure storage.
/// Supports:
/// - SharedPreferences (non-sensitive data)
/// - FlutterSecureStorage (sensitive data like tokens)
/// - CRUD operations and clearing all storage
final class LocalStorageService implements ILocalStorageService {
  // Singleton instance
  static final LocalStorageService _instance = LocalStorageService._internal();

  // SharedPreferences instance for non-sensitive data
  late SharedPreferences _prefs;

  // FlutterSecureStorage for sensitive data
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  /// Factory constructor returns singleton
  factory LocalStorageService() => _instance;

  LocalStorageService._internal();

  /// Initialize SharedPreferences (must be called before use)
  Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  /// ----------------------------
  /// Save a value for a given [StorageKey]
  /// ----------------------------
  @override
  Future<void> saveKey(StorageKey key, dynamic value) async {
    switch (key.type) {
      case StorageKeyType.string:
        await _prefs.setString(key.key, value as String);
        break;
      case StorageKeyType.secureString:
        await _secureStorage.write(key: key.key, value: value as String);
        break;
      case StorageKeyType.bool:
        await _prefs.setBool(key.key, value as bool);
        break;
      case StorageKeyType.int:
        await _prefs.setInt(key.key, value as int);
        break;
    }
  }

  /// ----------------------------
  /// Read a value for a given [StorageKey]
  /// ----------------------------
  @override
  Future<dynamic> readKey(StorageKey key) async {
    switch (key.type) {
      case StorageKeyType.string:
        return _prefs.getString(key.key);
      case StorageKeyType.secureString:
        return await _secureStorage.read(key: key.key);
      case StorageKeyType.bool:
        return _prefs.getBool(key.key);
      case StorageKeyType.int:
        return _prefs.getInt(key.key);
    }
  }

  /// ----------------------------
  /// Delete a specific [StorageKey]
  /// ----------------------------
  @override
  Future<void> deleteKey(StorageKey key) async {
    if (key.type == StorageKeyType.secureString) {
      await _secureStorage.delete(key: key.key);
    } else {
      await _prefs.remove(key.key);
    }
  }

  /// ----------------------------
  /// Clear all SharedPreferences keys
  /// ----------------------------
  @override
  Future<void> clearPrefs() async => await _prefs.clear();

  /// ----------------------------
  /// Clear all secure storage keys
  /// ----------------------------
  @override
  Future<void> clearSecure() async => await _secureStorage.deleteAll();

  /// ----------------------------
  /// Clear all local storage (both SharedPreferences and SecureStorage)
  /// ----------------------------
  @override
  Future<void> clearAll() async {
    await clearPrefs();
    await clearSecure();
  }
}