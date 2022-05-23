import 'package:flutter_firebase_auth/controller/auth_controller.dart';
import 'package:flutter_firebase_auth/utils/exports.dart';

class HomeScreen extends StatelessWidget {
  final _authController = Get.put(AuthController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Login Success'),
            Obx(() {
              return _authController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: AppTheme.kPrimaryColor,
                    ))
                  : ElevatedButton(
                      onPressed: () {
                        _authController.logOut();
                        Get.offAll(() => LoginScreen());
                      },
                      child: const Text('Logout'),
                    );
            }),
          ],
        ),
      ),
    );
  }
}
