/// ==========================================================
/// STORAGE KEY DEFINITIONS
/// ==========================================================
///
/// Enum to define all keys used in local or secure storage.
/// Each key has:
/// - [type]: Storage type (string, bool, int, secureString)
/// - [key]: Actual key string used in storage
enum StorageKeyType { string, bool, int, secureString }

enum StorageKey {
  /// Secure keys for authentication tokens
  accessToken(StorageKeyType.secureString, 'access_token'),
  refreshToken(StorageKeyType.secureString, 'refresh_token');

  /// Type of the value stored (string, bool, int, secureString)
  final StorageKeyType type;

  /// Actual key string used in SharedPreferences or SecureStorage
  final String key;

  const StorageKey(this.type, this.key);
}