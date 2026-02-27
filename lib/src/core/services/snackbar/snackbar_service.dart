import 'package:flutter/material.dart';
import 'i_snackbar_service.dart';

/// ==========================================================
/// SNACKBAR SERVICE
/// ==========================================================
///
/// Provides centralized methods to show success or error messages
/// using Flutter's [ScaffoldMessenger].
final class SnackBarService implements ISnackBarService {
  /// Global key for showing snackbars without needing a BuildContext
  final GlobalKey<ScaffoldMessengerState> _messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  GlobalKey<ScaffoldMessengerState> get messengerKey => _messengerKey;

  /// Shows an error message using a red snackbar.
  /// Requires a [context] to display the snackbar.
  @override
  void showError(String message, {required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Shows a success message using a green snackbar.
  /// Uses the internal [_messengerKey] for global access.
  @override
  void showSuccess(String message) {
    _messengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}