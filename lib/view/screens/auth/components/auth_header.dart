import 'package:flutter_firebase_auth/utils/exports.dart';

class AuthHeader extends StatelessWidget {
  final String? imagePath;
  final String? text;

  const AuthHeader({
    Key? key,
    this.imagePath,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imagePath!,
          height: Get.height * 0.35,
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          text!,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppTheme.kPrimaryColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}
