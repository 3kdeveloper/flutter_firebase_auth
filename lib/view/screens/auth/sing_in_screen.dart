import 'package:flutter_firebase_auth/utils/exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Here'),
      ),
      body: const Center(
        child: Text(
          'Login Here',
        ),
      ),
    );
  }
}
