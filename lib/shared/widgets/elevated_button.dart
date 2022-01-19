import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/shared/themes/svg_theme.dart';

class ElevatedButtonApp extends StatelessWidget {
  String routes;
  String? credentials;
  String? inputvalue;

  ElevatedButtonApp({ Key? key, required this.routes, this.credentials, this.inputvalue }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        if (credentials == inputvalue){
          Navigator.pushNamed(context, routes);
        } else {
          Navigator.pushNamed(context, '');
        }

      },
      child: Container(
        child: SvgPicture.asset(ImagesApp.arrowButton, width: 80,),
      ),     
    );
  }
}