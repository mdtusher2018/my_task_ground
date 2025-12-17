import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/config/router/routes.dart';
import 'package:scube_task/src/features/authentication/domain/entites/signin_entity.dart';
import 'package:scube_task/src/features/authentication/presentation/notifiers/signin_notifier.dart';
import 'package:scube_task/src/shared/themes/colors.dart';
import 'package:scube_task/src/shared/widgets/common_button.dart';
import 'package:scube_task/src/shared/widgets/common_text.dart';
import 'package:scube_task/src/shared/widgets/common_text_field.dart';

final _obscurePasswordProvider = StateProvider<bool>((ref) => true);

class SigninPage extends ConsumerWidget {
  SigninPage({super.key});

  final emailCtrl = TextEditingController(text: "xokekek289@bablace.com");
  final passCtrl = TextEditingController(text: "hello123");

  void _onLogin(WidgetRef ref) {



    ref
        .read(loginNotifierProvider.notifier)
        .login(email: emailCtrl.text.trim(), password: passCtrl.text.trim());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscurePassword = ref.watch(_obscurePasswordProvider);
    final obscurePasswordNotifier = ref.read(_obscurePasswordProvider.notifier);

    final signinState = ref.watch(loginNotifierProvider);

    ref.listen<AsyncValue<SigninEntity?>>(loginNotifierProvider, (
      previous,
      next,
    ) {
      next.whenOrNull(
        data: (data) {
          if (data != null) {
            context.go(AppRoutes.dashboard);
          }
        },
      );
    });

    final sheetHeight = MediaQuery.sizeOf(context).height * 0.6;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.memory,
                          color: AppColors.primary,
                          size: 45,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const CommonText(
                        "SCUBE",
                        size: 28,
                        color: AppColors.white,
                        isBold: true,
                      ),
                      const SizedBox(height: 6),
                      const CommonText(
                        "Control & Monitoring System",
                        size: 18,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// ⚪ BOTTOM LOGIN SHEET
            SizedBox(
              height: sheetHeight,
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      const CommonText(
                        "Login",
                        size: 20,
                        isBold: true,
                        color: AppColors.textPrimary,
                      ),
                      const SizedBox(height: 24),

                      CommonTextField(
                        emailCtrl,
                        hintText: "Username",
                        keyboardType: TextInputType.emailAddress,
                        borderColor: AppColors.gray,
                      ),
                      const SizedBox(height: 16),

                      /// PASSWORD
                      CommonTextField(
                         passCtrl,
                         isPasswordVisible: obscurePassword,
                         issuffixIconVisible: true,
                        changePasswordVisibility: () {
                          obscurePasswordNotifier.state=!obscurePasswordNotifier.state;
                        },
                        hintText: "Password",
                        keyboardType: TextInputType.visiblePassword,
                        borderColor: AppColors.gray,
                        
                      ),

                      const SizedBox(height: 10),

                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: const CommonText(
                            "Forget password?",
                            size: 12,
                            color: AppColors.primary,
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      CommonButton(
                        "Login",
                        height: 48,
                        isLoading: signinState.isLoading,
                        onTap: signinState.isLoading
                            ? null
                            : (){
                              context.pushReplacement(AppRoutes.dashboard);
                              _onLogin(ref);
                            },
                        color: AppColors.primary,
                        textColor: AppColors.white,
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CommonText(
                            "Don’t have any account? ",
                            size: 12,
                            color: AppColors.textSecondary,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const CommonText(
                              "Register Now",
                              size: 12,
                              color: AppColors.primary,
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
