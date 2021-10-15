import 'package:flutter_firebase_auth/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 3,
        child: Container(
          height: Get.height * 0.08,
          width: Get.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // color: AppTheme.kPrimaryColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: Get.width * 0.04),
              Text(buttonText),
            ],
          ),
        ),
      ),
    );
  }
}
