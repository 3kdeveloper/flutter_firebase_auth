import 'package:flutter_firebase_auth/utils/exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.08),
              Text(
                'Welcome back!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Please Select Login Method',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: Get.height * 0.1),
              CustomAuthButton(
                buttonText: 'Login with Email/Password',
                icon: 'assets/icons/mail.png',
                onTap: () => Get.to(() => LoginScreen()),
              ),
              SizedBox(height: Get.height * 0.03),
              CustomAuthButton(
                buttonText: 'Login with Google',
                icon: 'assets/icons/google.png',
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomAuthButton(
                buttonText: 'Login with Facebook',
                icon: 'assets/icons/facebook.png',
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomAuthButton(
                buttonText: 'Login with Phone No',
                icon: 'assets/icons/phone.png',
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomAuthButton(
                buttonText: 'Login with Anonymous',
                icon: 'assets/icons/anonymous.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
