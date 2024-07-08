import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:home_service/extensions/space.dart';
import 'package:home_service/views/auth_screens/otp_verify_screen.dart';
import 'package:home_service/views/auth_screens/register_screen.dart';
import 'package:home_service/views/utils/app_size.dart';
import 'package:home_service/views/utils/custom_widgets.dart';
import 'package:home_service/views/utils/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String countryCode = '+91';

  @override
  Widget build(BuildContext context) {
    var size = AppSize(context: context);
    var customWidget = CustomWidgets();
    var style = Styles();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.getWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              90.0.verticalSpace,
              Text('Welcome back!', style: style.boldTextStyle(),),
              10.0.verticalSpace,
              const Text('Please Login to your account', style: TextStyle(color: Colors.grey),),
              20.0.verticalSpace,
              Image.asset('assets/images/home_logo.png', width: 100,),
              40.0.verticalSpace,
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                    customWidget.authTextField(
                      leftPadding: 0,
                      hintText: 'Enter mobile number',
                      preFixIcon: TextButton(onPressed: countryCodePicker, child: Text(countryCode, style: const TextStyle(fontWeight: boldFont),))
                    ),
                    15.0.verticalSpace,
                    customWidget.appButton(onPress: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpVerifyScreen(),));
                    }, text: 'Login'),
                  ],
                ),
              ),
              customWidget.loginSignUpText(text: "Don't have account? ", onTapText: 'Sign Up', onPress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen(),));
              })
            ],
          ),
        ),
      ),
    );
  }

  void countryCodePicker() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: CountryCodePicker(
          onChanged: (newCountryCode) {
            setState(() {
              countryCode = newCountryCode.dialCode!;
            });
            Navigator.pop(context);
          },
          initialSelection: countryCode,
        ),
        title: const Text('Choose region', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
