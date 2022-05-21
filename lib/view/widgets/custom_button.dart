import 'package:flutter_firebase_auth/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  final double buttonWidth = 0.7;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: AppTheme.kWhiteColor,
        onTap: onPressed(),
        child: Container(
          alignment: Alignment.center,
          height: Get.height * 0.08,
          width: Get.width * buttonWidth,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppTheme.kWhiteColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ));
  }
}
