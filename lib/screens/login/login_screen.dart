import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import '../../di/injection.dart';
import '../../routes/sbdv_router.dart';
import '../../routes/sbdv_router.gr.dart';
import '../../util/responsive.dart';
import '../../widgets/custom_text_field.dart';
import 'cubit/auth/auth_cubit.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // context.read<AuthCubit>().login(
    //       _usernameController.text,
    //       _passwordController.text,
    //     );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      body: Row(
        children: [
          Visibility(
            visible: isDesktop,
            child: Expanded(
              flex: 7,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/login.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 16 : 64),
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state.state == AuthStates.success) {
                    serviceLocator<SBDVRouter>().push(DashboardRoute());
                  }
                },
                builder: (context, state) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          if (state.error?.errorMessage != null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                state.error?.errorMessage as String,
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          CustomTextField(
                            labelText: 'Username',
                            controller: _usernameController,
                            shouldShowValidation: state.shouldShowValidation,
                            hintText: 'Enter Username',
                            validatedField: state.validatedUsername,
                            onTextChanged: context.read<AuthCubit>().onUsernameChanged,
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            labelText: 'Password',
                            controller: _passwordController,
                            shouldShowValidation: state.shouldShowValidation,
                            hintText: 'Enter Password',
                            validatedField: state.validatedPassword,
                            onTextChanged: context.read<AuthCubit>().onPasswordChanged,
                            textInputType: TextInputType.visiblePassword,
                          ),
                          // TextFormField(
                          //   controller: _passwordController,
                          //   decoration: InputDecoration(
                          //     labelText: 'Password',
                          //     border: OutlineInputBorder(),
                          //   ),
                          //   obscureText: true,
                          //   validator: (value) {
                          //     if (value == null || value.isEmpty) {
                          //       return 'Please enter your password';
                          //     }
                          //     return null;
                          //   },
                          // ),
                          const SizedBox(height: 16),
                          // TODO ARONE: button UI from figma
                          ElevatedButton(
                            onPressed: () {
                              context.read<AuthCubit>().login(
                                    _usernameController.text,
                                    _passwordController.text,
                                  );
                            },
                            child: state.state == AuthStates.loading
                                ? const CircularProgressIndicator()
                                : const Text('Login'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
