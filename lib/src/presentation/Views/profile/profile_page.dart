import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/domain/entites/user_profile_entity.dart';
import 'package:scube_task/src/presentation/Views/profile/riverpod/profile_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifierProvider);

    // Show snackbar on error
    ref.listen<ProfileState>(profileNotifierProvider, (previous, next) {
      if (next.status == ProfileStatus.error && next.profile != null) {
        ref
            .read(snackBarServiceProvider)
            .showError(next.errorMessage ?? "Unknown Error", context: context);
      }
    });

    Widget body;

    switch (profileState.status) {
      case ProfileStatus.initial:
      case ProfileStatus.loading:
        body = const Center(child: CircularProgressIndicator());
        break;

      case ProfileStatus.success:
        body = _buildProfile(profileState.profile!, ref);
        break;

      case ProfileStatus.error:
        if (profileState.profile == null) {
          body = Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, color: Colors.red, size: 40),
                const SizedBox(height: 10),
                Text(
                  'Error: ${profileState.errorMessage}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red, fontSize: 18),
                ),
              ],
            ),
          );
        } else {
          // Show cached profile with error notification
          body = _buildProfile(profileState.profile!, ref);
        }
        break;

      case ProfileStatus.refetching:
        body = _buildProfile(profileState.profile!, ref);
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.watch(localStorageProvider).clearAll();
            },
          ),
        ],
      ),
      body: body,
    );
  }

  Widget _buildProfile(UserProfileEntity profile, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RefreshIndicator(
        onRefresh: () async {
          await ref.read(profileNotifierProvider.notifier).refetch();
        },
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Text(
              'Name: ${profile.fullName}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: ${profile.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: ${profile.phone}',
              style: const TextStyle(fontSize: 16),
            ),
            // Add more profile details here as needed
          ],
        ),
      ),
    );
  }
}