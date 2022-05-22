import 'package:flutter_firebase_auth/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _loginFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    key: _loginFormKey,
                    child: Column(
                      children: [
                        const AuthHeader(
                          imagePath: 'assets/images/login.svg',
                          text: 'LOGIN',
                        ),
                        SizedBox(height: Get.height * 0.02),
                        buildTextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Enter your email',
                          prefixIcon: Icons.email,
                          validate: (value) {
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
                          validate: (value) {
                            if (!GetUtils.isLengthGreaterOrEqual(value, 6)) {
                              return 'password must be 6 characters or greater';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: Get.height * 0.02),
                        const CustomForgotButton(),
                        SizedBox(height: Get.height * 0.05),
                        CustomButton(
                          buttonText: 'LOGIN',
                          buttonColor: AppTheme.kPrimaryColor,
                          onPressed: () => () {
                            if (_loginFormKey.currentState!.validate()) {
                              Get.to(() => const HomeScreen());
                            }
                          },
                        ),
                        const Spacer(),
                        SizedBox(height: Get.height * 0.02),
                        AuthFooter(
                          text: 'Are you a newbie? ',
                          buttonText: 'SIGN UP',
                          onPressed: () => () {
                            Get.to(() => SignUpScreen());
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
