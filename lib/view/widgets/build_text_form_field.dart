import 'package:flutter_firebase_auth/utils/exports.dart';

Widget buildTextFormField({
  TextInputType? keyboardType,
  String? hintText,
  TextEditingController? controller,
  bool obscureText = false,
  IconData? prefixIcon,
  IconData? suffixIcon,
  String? Function(String)? onChanged,
  required String? Function(String? value)? validate,
}) {
  return SizedBox(
    width: Get.width * 0.85,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        // style: kDescriptionTextStyle,
        cursorColor: AppTheme.kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText!,
          prefixIcon: Icon(prefixIcon, color: AppTheme.kPrimaryColor),
          suffixIcon: Icon(suffixIcon, color: AppTheme.kPrimaryColor),
          filled: true,
          fillColor: AppTheme.kTextFieldColor,
          border: InputBorder.none,
        ),
        onChanged: onChanged,
        validator: validate,
      ),
    ),
  );
}
