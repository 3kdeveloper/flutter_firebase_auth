import 'package:flutter_firebase_auth/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

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
                      ),
                      SizedBox(height: Get.height * 0.02),
                      buildTextFormField(
                        controller: _passwordController,
                        hintText: 'Enter password',
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.visibility_off,
                        obscureText: true,
                      ),
                      SizedBox(height: Get.height * 0.02),
                      const CustomForgotButton(),
                      SizedBox(height: Get.height * 0.05),
                      CustomButton(
                        buttonText: 'LOGIN',
                        buttonColor: AppTheme.kPrimaryColor,
                        onPressed: () => () {
                          // Get.offAll(() => HomeScreen());
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
          );
        }),
      ),
    );
  }
}
