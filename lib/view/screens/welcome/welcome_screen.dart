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
              const Text('Welcome back!'),
              SizedBox(height: Get.height * 0.02),
              const Text('Please Select Login Method'),
              SizedBox(height: Get.height * 0.12),
              CustomButton(
                buttonText: 'Login with Email/Password',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                buttonText: 'Login with Google',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                buttonText: 'Login with Facebook',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                buttonText: 'Login with Phone No',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                buttonText: 'Login with Anonymous',
                icon: Icons.email_outlined,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
