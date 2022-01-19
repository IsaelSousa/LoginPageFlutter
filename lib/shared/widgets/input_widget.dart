import 'package:flutter/material.dart';
import 'package:loginpage/controller/email_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/controller/password_controller.dart';

class InputWidgetStyled extends StatefulWidget {
  String? screen;
  String? title;
  String? placeholder;

  InputWidgetStyled({ Key? key, this.screen, this.title, this.placeholder }) : super(key: key);

  @override
  _InputWidgetStyledState createState() => _InputWidgetStyledState();
}

class _InputWidgetStyledState extends State<InputWidgetStyled> {

  TextEditingController mycontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('${widget.title}',
          style: const TextStyle(
            fontSize: 36,
            color: Colors.white
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: TextField(
        controller: mycontroller, // Controller
        onChanged: (text){
          if (widget.screen == '1'){
            EmailController.instance.sendText(text);
          }
          if (widget.screen == '2'){
            PasswordController.instance.sendText(text);
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: GoogleFonts.rubik(
            fontSize: 18,
            color: const Color(0xFF21224E)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
              ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(20),
          fillColor: Colors.white,
        ),
),
        ),
      ],
    );
  }
}