import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:societyadminapp/Widgets/My%20Back%20Button/my_back_button.dart';
import '../../../../Constants/constants.dart';
import '../../../../Routes/set_routes.dart';
import '../../../../Widgets/My Button/my_button.dart';
import '../Controller/add_local_building_floors_controller.dart';

class AddLocalBuildingFloors extends GetView {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddLocalBuildingFloorsController>

      (init: AddLocalBuildingFloorsController(),
        builder: (controller) {
      return WillPopScope(
        onWillPop: ()async{
          Get.offAndToNamed(localbuildingfloorsscreen,
              arguments: controller.user);

          return true;
        },
        child: Scaffold(
            body: Padding(
              padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    MyBackButton(
                      text: 'Add Floors',
                      onTap: () {
                        Get.offAndToNamed(localbuildingfloorsscreen,
                            arguments: controller.user);
                      },
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('From Floors'),
                              Text('To Floors'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 70,
                                  child: TextFormField(
                                    validator: emptyStringValidator,
                                    controller: controller.fromController,
                                    keyboardType: TextInputType.number,
                                    enabled: true,
                                    decoration: InputDecoration(
                                        filled: true,
                                        errorBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide:
                                          BorderSide(), //<-- SEE HERE
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 70,
                                  child: TextFormField(
                                    validator: emptyStringValidator,
                                    controller: controller.toController,
                                    keyboardType: TextInputType.number,
                                    enabled: true,
                                    decoration: InputDecoration(
                                        filled: true,
                                        errorBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide:
                                          BorderSide(), //<-- SEE HERE
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    MyButton(
                      onPressed: () {
                        // print(controller.user.userid);
                        // print(controller.user.bearerToken);

                        controller.addLocalbuildingFloorsApi(
                          bearerToken: controller.user.bearerToken!,
                          from: controller.fromController.text.toString(),
                          to: controller.toController.text.toString(),
                          buildingid: controller.user.societyid!,
                          subadminid: controller.user.userid!,

                        );
                      },
                      name: 'Save',
                    )
                  ],
                ),
              ),
            )

        ),
      );
    });
  }
}
