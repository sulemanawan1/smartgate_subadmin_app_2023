import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../Constants/constants.dart';
class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final bool? fill;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final String? labelText;
  final int? maxLines;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? fillColor;
  final Color onFocusedBorderColor;
  final Color onEnabledBorderColor;
  final TextInputType? keyboardType;
 final EdgeInsetsGeometry? padding;

  // final bool obscureText;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  const MyTextFormField(
  {super.key,
  // required  this.obscureText,
  //    this.togglePasswordView,
  this.maxLines,this.keyboardType,
  this.contentPadding,
    this.padding,
  this.prefixIcon,
  this.suffixIcon,
  this.fontWeight,
  this.fill,
  this.fontSize,
  this.onTap,
  this.width,
  this.height,
  this.controller,
  this.fillColor,
  this.validator,
  required this.hintText,
  this.labelTextColor,
  required this.labelText,
  this.hintTextColor,
  required this.onFocusedBorderColor,
  required this.onEnabledBorderColor});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(39, 16, 38, 0) ??padding!,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: height,
        child: TextFormField(

          // obscureText: widget.obscureText,
          textAlign: TextAlign.left,
          onTap: onTap,
          validator: validator,
          maxLines: maxLines??1,
          controller: controller,
          cursorColor: primaryColor,
          keyboardType: keyboardType,

          decoration: InputDecoration(


            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding??EdgeInsets.fromLTRB(60, 0, 20, 0),
            // suffix: GestureDetector(
            //     // onTap: widget.togglePasswordView,
            //     child: Icon(
            //       widget.obscureText
            //           ? Icons.visibility
            //           : Icons.visibility_off,
            //     )),
            filled: fill??true,

            labelStyle: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color:labelTextColor?? HexColor('#B6B6B6')),
            hintStyle: TextStyle(
              color:hintTextColor??HexColor("#B6B6B6"),
            ),
            hintText: hintText,
            labelText: labelText,

            fillColor: fillColor??Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
              BorderSide(color: onFocusedBorderColor, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: onEnabledBorderColor,
                width: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }

}
