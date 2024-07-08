import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/extensions/space.dart';
import 'package:home_service/views/auth_screens/login_screen.dart';
import 'package:home_service/views/utils/custom_widgets.dart';
import 'package:home_service/views/utils/styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool hidePassword = true;
  bool hideRePassword = true;
  bool? termCondition = false;

  @override
  Widget build(BuildContext context) {
    var style = Styles();
    var customWidget = CustomWidgets();

    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Sign Up', style: style.boldTextStyle(),),
                50.0.verticalSpace,
                customWidget.authTextField(hintText: 'Username'),
                15.0.verticalSpace,
                customWidget.authTextField(hintText: 'Email'),
                15.0.verticalSpace,
                customWidget.authTextField(hintText: 'Mobile Number'),
                15.0.verticalSpace,
                customWidget.authTextField(hintText: 'Password', suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                }, icon: const Icon(Icons.visibility_off)),obscureText: hidePassword),
                15.0.verticalSpace,
                customWidget.authTextField(hintText: 'Re-enter Password', suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    hideRePassword=!hideRePassword;
                  });
                }, icon: const Icon(Icons.visibility_off)), obscureText: hideRePassword),
                Padding(padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Checkbox(value: termCondition, onChanged: (value) {
                      setState(() {termCondition = value;});
                    }, activeColor: primaryColor,),
                    Text("I agree to the Terms and \nConditions", style: style.normalTextStyle(color: primaryColor),)
                  ],
                ),),

                customWidget.appButton(onPress: (){
                  alertDialog(style);
                }, text: 'Sign Up'),
                20.0.verticalSpace,
                customWidget.loginSignUpText(text: 'Have an account? ', onTapText: 'Sign In', onPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),)),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  alertDialog(Styles style){
    showDialog(context: context, builder: (context) =>
    AlertDialog(
      title: Text('Alert', style: style.boldTextStyle(),),
      content: Text('Please agree the terms and conditions', style: style.normalTextStyle(color: Colors.grey),),
      actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Ok', style: style.normalTextStyle(color: primaryColor),))],
    ));
  }
}
