import 'package:flutter/material.dart';
import 'package:loginpage/controller/password_controller.dart';
import 'package:loginpage/screen/splash_screen.dart';
import 'package:loginpage/shared/themes/colors_theme.dart';
import 'package:loginpage/shared/themes/svg_theme.dart';
import 'package:loginpage/shared/widgets/input_widget.dart';
import 'package:flutter_svg/svg.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({ Key? key }) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsApp.navyBlue,
      body: SizedBox(child: 
      Stack(
        children: [
          Positioned(
            top: 35,
            right: 20,
            child: SvgPicture.asset(ImagesApp.cloudsun, width: 170,)),

           Positioned(
            right: 0,
            left: 0,
            top: 320,
            child: InputWidgetStyled(screen: '2', title: 'Password', placeholder: 'Digite sua senha',)
            ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 75,
            child: InkWell(
      onTap: () {
        if (PasswordController.instance.password == '123'){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const SplashScreen())
            );
        }

      },
      child: Container(
        child: SvgPicture.asset(ImagesApp.arrowButton, width: 80,),
      ),     
    ),
    )

        ],
      ),
      ),
    );
  }
}