import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:test_clean_architecture/lib.dart';

import '../../../router/router.dart';
import '../../../presentations/presentations.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final AuthCubit cubit = context.read();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          previous.isAuthenticated != current.isAuthenticated,
      listener: (context, state) {
        if (state.isAuthenticated) {
          Future.microtask(() => router.maybePop(true));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 84.0, left: 16, right: 16),
              child: Column(
                children: [
                  // Center the logo
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.08, // Adjust as necessary
                      child: Image.asset('assets/images/auth/logo_login.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Welcome Back!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Login to your account',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    18, // Smaller size for the second text
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              controller: usernameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field tidak boleh kosong';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color(0xFF1E1E1E), // Dark background
                                errorStyle: const TextStyle(color: Colors.red),
                                hintText: 'Enter Work E-mail',

                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(
                                        0xFF787777), // Border color when not focused
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .white, // White border when focused
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors
                                    .white, // Text color for password field
                              ),
                              controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password harus diisi';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(
                                    0xFF1E1E1E), // Dark gray background for password
                                errorStyle: const TextStyle(color: Colors.red),
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.white),

                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF787777),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      cubit
                          .login(
                        usernameController.text,
                        passwordController.text,
                      )
                          .then((_) {
                        if (cubit.state.user != null) {
                          Fluttertoast.showToast(
                            msg: 'Login berhasil!',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          router.push(HomeRoute());
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Image.asset(
                          'assets/images/auth/mobile.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/auth/or.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/auth/without_login.png',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
