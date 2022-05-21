import 'exports.dart';

class AppTheme {
  // Colors
  static const kPrimaryColor = Color(0xff045aa5);
  static const kWhiteColor = Color(0xffffffff);
  static const kBlackColor = Color(0xff090909);
  static const kTextFieldColor = Color(0xffcfd5ee);

  // Theme
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kWhiteColor,
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: kTextFieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )),
    iconTheme: const IconThemeData(color: kPrimaryColor),
  );
}
