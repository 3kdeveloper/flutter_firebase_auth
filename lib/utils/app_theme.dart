import 'exports.dart';

class AppTheme {
  // Colors
  static const kPrimaryColor = Color(0xff045aa5);
  static const kWhiteColor = Color(0xffffffff);
  static const kBlackColor = Color(0xff090909);
  static const kTextFieldColor = Color.fromARGB(255, 208, 214, 236);

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

    // TextTheme
    // textTheme: TextTheme(
    //   titleMedium: const TextStyle(
    //     fontSize: 18,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   subtitle1: const TextStyle(
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //   ),
    // ),
  );
}
