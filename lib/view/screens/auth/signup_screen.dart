import 'package:flutter_firebase_auth/utils/exports.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
                      buildTextFormField(
                        controller: _conformPasswordController,
                        hintText: 'Conform password',
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.visibility_off,
                        obscureText: true,
                      ),
                      SizedBox(height: Get.height * 0.05),
                      CustomButton(
                        buttonText: 'SIGN UP',
                        buttonColor: AppTheme.kPrimaryColor,
                        onPressed: () => () {
                          //TODO Check Validation, Create user account on Firebase & go to HomeScreen
                          // Get.offAll(() => HomeScreen());
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
          );
        }),
      ),
    );
  }
}
