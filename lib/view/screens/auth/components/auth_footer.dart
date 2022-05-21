import 'package:flutter_firebase_auth/utils/exports.dart';

class AuthFooter extends StatelessWidget {
  final String? text;
  final String? buttonText;
  final Function onPressed;

  const AuthFooter({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        InkWell(
          onTap: onPressed(),
          child: Text(
            buttonText!,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppTheme.kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ],
    );
  }
}
