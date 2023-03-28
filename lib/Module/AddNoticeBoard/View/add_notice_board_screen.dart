import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:societyadminapp/Module/AddNoticeBoard/Controller/add_notice_board_controller.dart';
import 'package:societyadminapp/Widgets/My%20Back%20Button/my_back_button.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';

class AddNoticeBoardScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: GetBuilder<AddNoticeBoardScreenController>(
            init: AddNoticeBoardScreenController(),
            builder: (controller) {
              return Form(
                key: controller.formKey,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        MyBackButton(text: 'Add Notice',),
                     SizedBox(height: 20,),
                        SvgPicture.asset(
                          "assets/notices_vector.svg",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        MyTextFormField(
                            fillColor: Colors.white,
                            controller: controller.noticetitleController,
                            validator: emptyStringValidator,
                            hintText: 'NOTICE TITLE',
                            labelText: 'NOTICE TITLE',

                        ),
                        MyTextFormField(
                            maxLines: 1,
                            // contentPadding: EdgeInsets.symmetric(
                            //     vertical: 30, horizontal: 20),
                            fillColor: Colors.white,
                            controller: controller.noticedescriptionController,
                            validator: emptyStringValidator,
                            hintText: 'ENTER DESCRIPTION',
                            labelText: 'ENTER DESCRIPTION',
                            ),
                        MyTextFormField(
                            onTap: () {
                              controller.NoticeStartDate(context);
                            },
                            suffixIcon: SvgPicture.asset(
                              "assets/add_event_icon.svg",

                                fit: BoxFit.scaleDown

                            ),
                            fillColor: Colors.white,
                            controller: controller.startnoticedateController,
                            validator: emptyStringValidator,
                            hintText: 'Choose START Date',
                            labelText: 'Choose START Date',
                            ),
                        MyTextFormField(

                            onTap: () {
                              controller.NoticeEndDate(context);
                            },
                            suffixIcon: SvgPicture.asset(
                                "assets/add_event_icon.svg",

                                fit: BoxFit.scaleDown
                            ),
                            fillColor: Colors.white,
                            controller: controller.endnoticedateController,
                            validator: emptyStringValidator,
                            hintText: 'Choose END Date',
                            labelText: 'Choose END Date',
                            ),
                        MyTextFormField(
                            onTap: () {
                              controller.NoticeStartTime(context);
                            },
                            suffixIcon: SvgPicture.asset(
                              "assets/time_icon.svg",
                                fit: BoxFit.scaleDown,
                              color: HexColor('#BEBEBE'),
                            ),
                            fillColor: Colors.white,
                            controller: controller.startnoticetimeController,
                            validator: emptyStringValidator,
                            hintText: 'Choose START TIME',
                            labelText: 'Choose START TIME',
                            ),
                        MyTextFormField(
                            onTap: () {
                              controller.NoticeEndTime(context);
                            },
                            suffixIcon: SvgPicture.asset('assets/time_icon.svg',
                                color: HexColor('#BEBEBE'),

                                fit: BoxFit.scaleDown

                            ),
                            fillColor: Colors.white,
                            controller: controller.endnoticetimeController,
                            validator: emptyStringValidator,
                            hintText: 'Choose END TIME',
                            labelText: 'Choose END TIME',
                            ),
                        SizedBox(height: 20,),
                        MyButton(
                          width: MediaQuery.of(context).size.width * 0.4,
                          elevation: 5,
                          onPressed: controller.isLoading
                              ? null
                              : () {
                                  if (controller.formKey.currentState!
                                      .validate()) {
                                    controller.addNoticeBoardApi(
                                        noticetitle:
                                            controller.noticetitleController.text,
                                        noticedes: controller
                                            .noticedescriptionController.text,
                                        startdate: controller
                                            .startnoticedateController.text,
                                        enddate: controller
                                            .endnoticedateController.text,
                                        starttime: controller
                                            .startnoticetimeController.text,
                                        endtime: controller
                                            .endnoticetimeController.text,
                                        bearerToken:
                                            controller.userdata!.bearerToken!,
                                        subadminid: controller.userdata!.userid!);
                                  } else {
                                    return null;
                                  }
                                },
                          textColor: Colors.white,
                          color: primaryColor,
                          name: 'Save',
                          maxLines: 1,
                          outlinedBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
