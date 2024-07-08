import 'package:flutter/material.dart';
import 'package:home_service/extensions/space.dart';
import 'package:home_service/views/utils/custom_widgets.dart';
import 'package:home_service/views/utils/styles.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {

  List<TextEditingController> otpControllers = List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {

    var style = Styles();
    var customWidget = CustomWidgets();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('OTP Verification', style: style.boldTextStyle(),),
                20.0.verticalSpace,
                Text('We have sent OTP to your mobile number', style: style.normalTextStyle(color: Colors.grey),),
                70.0.verticalSpace,
                buildOTPDigitsRow(),
                40.0.verticalSpace,
                customWidget.loginSignUpText(text: "Didn't receive OTP? ",color: Colors.deepOrangeAccent, onTapText: ' Resend OTP', onPress: (){}),
                30.0.verticalSpace,
                customWidget.appButton(onPress: () {

                }, text: 'Submit'),
                20.0.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOTPDigitsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4, (index) => SizedBox(
          width: 60,
          child: TextField(
            controller: otpControllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: '0',
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String getEnteredOtp(){
    String otp = '';
    for(TextEditingController controller in otpControllers){
      otp += controller.text;
    }
    return otp;
  }
}
