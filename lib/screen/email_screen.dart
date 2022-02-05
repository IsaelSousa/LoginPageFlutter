import 'package:flutter/material.dart';
import 'package:loginpage/controller/email_controller.dart';
import 'package:loginpage/screen/password_screen.dart';
import 'package:loginpage/shared/themes/colors_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpage/shared/themes/svg_theme.dart';
import 'package:loginpage/shared/widgets/input_widget.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({ Key? key }) : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {

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
            child: InputWidgetStyled(screen: '1', title: 'Login', placeholder: 'Digite seu e-mail',)
            ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 75,
            child: InkWell(
      onTap: () {
        if (EmailController.instance.email == 'abc'){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const PasswordScreen())
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