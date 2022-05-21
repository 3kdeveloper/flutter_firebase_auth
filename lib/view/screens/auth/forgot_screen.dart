import 'package:flutter_firebase_auth/utils/exports.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool isTextFieldEmpty = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    Padding(
                      padding: kDefaultPadding.copyWith(top: Get.height * 0.05),
                      child: Column(
                        children: [
                          const AuthHeader(
                            imagePath: 'assets/images/forgotPassword.svg',
                            text: 'Forgot Password',
                          ),
                          SizedBox(height: Get.height * 0.02),
                          buildTextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: 'Enter your email',
                            prefixIcon: Icons.email,
                            onChanged: (value) {
                              setState(() {
                                isTextFieldEmpty = !isTextFieldEmpty;
                              });
                              return value;
                            },
                          ),
                          SizedBox(height: Get.height * 0.05),
                          CustomButton(
                            buttonText: 'Reset Password',
                            buttonColor: _emailController.text.isEmail
                                ? AppTheme.kPrimaryColor
                                : Colors.grey,
                            onPressed: () => () {
                              //TODO Check Validation and Send Reset code to user email
                            },
                          ),
                          SizedBox(height: Get.height * 0.04),
                          AuthFooter(
                            text: 'Goto? ',
                            buttonText: 'LOGIN',
                            onPressed: () => () {
                              Get.to(() => LoginScreen());
                            },
                          ),
                          SizedBox(height: Get.height * 0.04),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        highlightColor: AppTheme.kWhiteColor,
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppTheme.kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
