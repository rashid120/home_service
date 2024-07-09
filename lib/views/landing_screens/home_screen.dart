import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/views/utils/app_size.dart';
import 'package:home_service/views/utils/custom_widgets.dart';
import 'package:home_service/views/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var style = Styles();
    var size = AppSize(context: context);
    var customWidget = CustomWidgets();

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: primaryColor,))],
      ),

      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              currentAccountPictureSize: const Size.square(50),
                currentAccountPicture: CircleAvatar(backgroundColor: primaryColor, child: Text('J', style: style.boldTextStyle(color: subPrimaryColor),),),
                accountName: Text('John Smith', style: style.normalTextStyle(weight: boldFont, color: primaryColor),),
                accountEmail: const Text('johnsmith@gmail.com', style: TextStyle(color: fikColor),)
            ),
            customWidget.profileMenu(),
          ],
        ),
      ),
    );
  }
}
