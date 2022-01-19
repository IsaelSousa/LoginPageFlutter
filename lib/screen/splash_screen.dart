import 'package:flutter/material.dart';
import 'package:loginpage/shared/themes/colors_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/shared/themes/svg_theme.dart';
import 'package:loginpage/shared/widgets/elevated_button.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                color: ColorsApp.navyBlue,
              ),

              Center(
                child: Positioned(
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(ImagesApp.cloudsunLarge, width: 300)
                  ),
              ),

               Positioned(
                left: 0,
                right: 0,
                bottom: 75,
                child: ElevatedButtonApp(routes: '/email',)
                )

          ],),)
        ),
    );
  }
}