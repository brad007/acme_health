import 'dart:ui';

import 'package:acme_health/application/login/login_bloc.dart';
import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/presentation/router/app_router.gr.dart';
import 'package:acme_health/presentation/widgets/acme_health_button.dart';
import 'package:acme_health/presentation/widgets/acme_health_textfield.dart';
import 'package:acme_health/service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (BuildContext context, LoginState state) {
          if (state.failure.isSome()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text(state.failure.fold(() => '', (a) => a.toString())),
              ),
            );
          }

          if (state.user.isSome()) {
            context.router.replaceAll([const HomeRoute()]);
          }
        },
        builder: (BuildContext context, LoginState state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: const Text('Welcome back'),
                ),
                body: Container(
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const SizedBox(height: 64),
                      AcmeHealthTextfield(
                        value: state.emailAddress,
                        label: 'E-mail (user@example.com)'.toOption(),
                        hint: 'Enter your email'.toOption(),
                        // type: TextInputType.emailAddress,
                        showError: state.showErrorMessages,
                        errorMessage: state.emailAddress.value.fold(
                          (l) => l.failedValue.toOption(),
                          (a) => none(),
                        ),
                        onChanged: (value) {
                          context.read<LoginBloc>().add(
                                LoginEvent.emailChanged(value),
                              );
                        },
                      ),
                      const SizedBox(height: 16),
                      AcmeHealthTextfield(
                        value: state.password,
                        label: optionOf('Password (password)'),
                        hint: optionOf('Enter your password'),
                        type: TextInputType.visiblePassword,
                        showError: state.showErrorMessages,
                        suffixIcon: optionOf(
                          GestureDetector(
                            onTap: () {
                              context.read<LoginBloc>().add(
                                    const LoginEvent.toggleShowPassword(),
                                  );
                            },
                            child: Icon(
                              state.showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        errorMessage: state.password.value.fold(
                          (l) => optionOf(l.failedValue),
                          (a) => none(),
                        ),
                        onChanged: (value) {
                          context.read<LoginBloc>().add(
                                LoginEvent.passwordChanged(value),
                              );
                        },
                        obscureText: !state.showPassword,
                      ),
                      Spacer(),
                      AcmeHealthButton(
                        onPressed: () {
                          if (state.isFormValid) {
                            context.read<LoginBloc>().add(
                                  const LoginEvent.signInPressed(),
                                );
                          } else {
                            context.read<LoginBloc>().add(
                                  const LoginEvent.showErrorMessages(),
                                );
                          }
                        },
                        enabled: state.isFormValid,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Log in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 64),
                    ],
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ],
          );
        },
      ),
    );
    return const Scaffold();
  }
}
