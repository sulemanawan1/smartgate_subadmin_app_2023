
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Constants/constants.dart';
class MyPasswordTextFormField extends GetView{
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? fillcolor;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final void Function()? togglePasswordView;

  const MyPasswordTextFormField(
      {super.key,
      this.maxLines,
      this.contentPadding,
      this.fontWeight,
      this.controller,
      this.width,
      this.height,
      this.hintText,
      this.labelText,
      this.labelTextColor,
      this.hintTextColor,
      this.fillcolor,
      required this.obscureText,
      this.validator,
      this.onTap,
      this.togglePasswordView});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.fromLTRB(39, 16, 38, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height:height ,
        child: TextFormField(
          textAlign: TextAlign.left,
          onTap: onTap,
          validator: validator,
          obscureText: obscureText,


          maxLines: maxLines??1,
          controller: controller,
          decoration: InputDecoration(

            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none ,
            focusedErrorBorder:InputBorder.none ,
            filled: true,
            contentPadding: contentPadding??EdgeInsets.fromLTRB(60, 0, 0, 0),            suffix: GestureDetector(
              onTap: togglePasswordView,
              child:
              obscureText
                  ?     Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),
                    child: SvgPicture.asset('assets/eye_closed.svg',fit: BoxFit.scaleDown,width: 30,),
                  ):
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),
                child: SvgPicture.asset("assets/eye_opened.svg",fit: BoxFit.scaleDown, width: 30,),
              )

              // Icon(
              //   obscureText
              //       ? Icons.visibility
              //       : Icons.visibility_off,
              // )

          ),

            labelStyle:   GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,

                // color: secondaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: HexColor('#B6B6B6')
            ),
            hintStyle: TextStyle(
              color:hintTextColor??HexColor("#555555"),
              fontWeight: FontWeight.w400,
            ),
            hintText: hintText,
            labelText: labelText,
            fillColor: fillcolor??HexColor('#EEEEEE'),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              BorderSide(color: primaryColor, width: 1.5),
            ),

          ),
        ),
      ),
    );
  }


}
