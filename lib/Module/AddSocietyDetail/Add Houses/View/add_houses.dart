import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:societyadminapp/Module/AddSocietyDetail/Add%20Houses/Controller/add_houses_controller.dart';
import 'package:societyadminapp/Widgets/My%20Back%20Button/my_back_button.dart';
import '../../../../Constants/constants.dart';
import '../../../../Routes/set_routes.dart';
import '../../../../Widgets/My Button/my_button.dart';
import '../../../../Widgets/My TextForm Field/my_textform_field.dart';

class AddHouses extends GetView {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddHousesController>(
        init: AddHousesController(),
        builder: (controller) {
          return WillPopScope(
            onWillPop: () async {
              if (controller.user.structureType == 5) {
                Get.offNamed(houses, arguments: controller.user);
              } else if (controller.user.structureType == 1) {
                Get.offNamed(houses,
                    arguments: [controller.user, controller.streetid]);
              } else if (controller.user.structureType == 2) {
                Get.offNamed(houses, arguments: [
                  controller.user,
                  controller.streetid,
                  controller.blockid
                ]);
              } else if (controller.user.structureType == 3) {
                Get.offNamed(houses, arguments: [
                  controller.user,
                  controller.streetid,
                  controller.blockid,
                  controller.phaseid
                ]);
              }
              return false;
            },
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                  child: WillPopScope(
                    onWillPop: () async {
                      await Get.offNamed(houses, arguments: controller.user);
                      return false;
                    },
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        children: <Widget>[
                          MyBackButton(
                            text: 'Add Houses',
                            onTap: () {
                              if (controller.user.structureType == 5) {
                                Get.offNamed(houses,
                                    arguments: controller.user);
                              } else if (controller.user.structureType == 1) {
                                Get.offNamed(houses, arguments: [
                                  controller.user,
                                  controller.streetid
                                ]);
                              } else if (controller.user.structureType == 2) {
                                Get.offNamed(houses, arguments: [
                                  controller.user,
                                  controller.streetid,
                                  controller.blockid
                                ]);
                              } else if (controller.user.structureType == 3) {
                                Get.offNamed(houses, arguments: [
                                  controller.user,
                                  controller.streetid,
                                  controller.blockid,
                                  controller.phaseid
                                ]);
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 344,
                            width: 299,
                            child: Card(
                              child: Column(
                                children: [
                                  MyTextFormField(
                                    hintText: 'Address',
                                    labelText: 'Address',

                                    validator: emptyStringValidator,
                                    controller: controller.addressController,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 28, left: 27),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 27),
                                      child: Row(
                                        children: [
                                          Container(
                                            color: Color(0xFFF7F8FA),
                                            height: 25,
                                            width: 98,
                                            child: Center(
                                                child: Text(
                                              'From Houses',
                                              style: TextStyle(
                                                  color: HexColor('#535353')),
                                            )),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Image(
                                              image: AssetImage(
                                                  'assets/arrow1.png')),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Container(
                                            color: Color(0xFFF7F8FA),
                                            height: 25,
                                            width: 98,
                                            child: Center(
                                                child: Text(
                                              'To Houses',
                                              style: TextStyle(
                                                  color: HexColor('#535353')),
                                            )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 38),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 38),
                                          child: Container(
                                            width: 75,
                                            height: 75,
                                            color: Color.fromRGBO(
                                                255, 153, 0, 0.14),
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/housefieldpic.png')),
                                                ),
                                                Center(
                                                  child: TextFormField(
                                                    validator:
                                                        emptyStringValidator,
                                                    controller: controller
                                                        .fromController,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    enabled: true,
                                                    decoration: InputDecoration(
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          borderSide:
                                                              BorderSide(), //<-- SEE HERE
                                                        ),
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 75,
                                            height: 75,
                                            color: Color.fromRGBO(
                                                255, 153, 0, 0.14),
                                            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/textfieldimg.png'))),

                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/housefieldpic.png')),
                                                ),
                                                Center(
                                                  child: TextFormField(
                                                    validator:
                                                        emptyStringValidator,
                                                    controller:
                                                        controller.toController,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    enabled: true,
                                                    decoration: InputDecoration(
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          borderSide:
                                                              BorderSide(), //<-- SEE HERE
                                                        ),
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MyButton(
                                    height: 37,
                                    width: 222,
                                    border: 5,
                                    onPressed: () {
                                      // print(controller.user.userid);
                                      // print(controller.user.bearerToken);

                                      if (controller.user.structureType == 5) {
                                        controller.addHousesApi(
                                          societyid: controller.user.societyid!,
                                          subadminid: controller.user.userid!,
                                          superadminid:
                                              controller.user.superadminid!,
                                          address: controller
                                              .addressController.text
                                              .toString(),
                                          bearerToken:
                                              controller.user.bearerToken!,
                                          from: controller.fromController.text
                                              .toString(),
                                          to: controller.toController.text
                                              .toString(),
                                          dynamicid: controller.user.societyid!,
                                        );
                                      } else {
                                        controller.addHousesApi(
                                          societyid: controller.user.societyid!,
                                          subadminid: controller.user.userid!,
                                          superadminid:
                                              controller.user.superadminid!,
                                          address: controller
                                              .addressController.text
                                              .toString(),
                                          bearerToken:
                                              controller.user.bearerToken!,
                                          from: controller.fromController.text
                                              .toString(),
                                          to: controller.toController.text
                                              .toString(),
                                          dynamicid: controller.streetid!,
                                        );
                                      }
                                    },
                                    name: 'Save',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
