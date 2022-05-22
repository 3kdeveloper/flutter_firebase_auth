import 'package:flutter_firebase_auth/utils/exports.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _signUpKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: kDefaultPadding.copyWith(top: Get.height * 0.006),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Form(
                    key: _signUpKey,
                    child: Column(
                      children: [
                        // SizedBox(height: Get.height * 0.003),
                        const AuthHeader(
                          imagePath: 'assets/images/register.svg',
                          text: 'SIGN UP',
                        ),
                        SizedBox(height: Get.height * 0.02),
                        buildTextFormField(
                          controller: _nameController,
                          hintText: 'Enter your Full Name',
                          prefixIcon: Icons.email,
                          validate: (value) {
                            if (!GetUtils.isLengthGreaterOrEqual(value, 3)) {
                              return 'Name must be 3 characters or greater';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Get.height * 0.02),
                        buildTextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Enter your email',
                          prefixIcon: Icons.email,
                          validate: (String? value) {
                            if (!GetUtils.isEmail(value!)) {
                              return 'please provide a valid email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Get.height * 0.02),
                        buildTextFormField(
                          controller: _passwordController,
                          hintText: 'Enter password',
                          prefixIcon: Icons.lock,
                          suffixIcon: Icons.visibility_off,
                          obscureText: true,
                          validate: (String? value) {
                            if (!GetUtils.isLengthGreaterOrEqual(value, 6)) {
                              return 'password must be 6 characters or greater';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Get.height * 0.02),
                        buildTextFormField(
                          controller: _conformPasswordController,
                          hintText: 'Conform password',
                          prefixIcon: Icons.lock,
                          suffixIcon: Icons.visibility_off,
                          obscureText: true,
                          validate: (String? value) {
                            if (!GetUtils.hasMatch(
                                value, _passwordController.text)) {
                              return 'Oop\'s password not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Get.height * 0.05),
                        CustomButton(
                          buttonText: 'SIGN UP',
                          buttonColor: AppTheme.kPrimaryColor,
                          onPressed: () => () {
                            if (_signUpKey.currentState!.validate()) {
                              Get.to(() => const HomeScreen());
                            }
                          },
                        ),
                        const Spacer(),
                        SizedBox(height: Get.height * 0.02),
                        AuthFooter(
                          text: 'I am already a member? ',
                          buttonText: 'LOGIN',
                          onPressed: () => () {
                            Get.to(() => LoginScreen());
                          },
                        ),
                        SizedBox(height: Get.height * 0.04),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
