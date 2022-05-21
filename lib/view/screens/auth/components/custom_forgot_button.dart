import 'package:flutter_firebase_auth/utils/exports.dart';

class CustomForgotButton extends StatelessWidget {
  const CustomForgotButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.height * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            highlightColor: AppTheme.kWhiteColor,
            onTap: () {
              Get.to(() => const ForgotScreen());
            },
            child: Text(
              'Forgot Password',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppTheme.kPrimaryColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
