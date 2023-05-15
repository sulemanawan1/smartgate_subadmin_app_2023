import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;
import 'package:image_picker/image_picker.dart';
import 'package:societyadminapp/Routes/set_routes.dart';

import '../../../Constants/api_routes.dart';
import '../../Login/Model/User.dart';

class AddGateKepeerScreenController extends GetxController {
  final formKey = new GlobalKey<FormState>();
  var isHidden = false;
  var isLoading = false;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();

  TextEditingController cnicController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();

  TextEditingController gatenoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  File? imageFile;

  var arguments = Get.arguments;
  late final User? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user = arguments;
  }

  getFromGallery(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      print('file picked: $pickedFile');
      // img = pickedFile as Image?;

      print('Assigning Image file');
      imageFile = File(pickedFile.path);
      update();
    }
  }

  getFromCamera(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      print('file picked: $pickedFile');
      // img = pickedFile as Image?;

      print('Assigning Image file');
      imageFile = File(pickedFile.path);
      update();
    }
  }

  addGateKeeperApi({
    required File file,
    required String fname,
    required String lname,
    required String cnic,
    required String address,
    required String mobileno,
    required String gateno,
    required String password,
    required String bearerToken,
    required int subadminid,
    required int societyid,
  }) async {
    isLoading = true;
    update();

    Map<String, String> headers = {"Authorization": "Bearer $bearerToken"};
    var request =
        Http.MultipartRequest('POST', Uri.parse(Api.registerGatekeeper));
    request.headers.addAll(headers);

    request.files.add(await Http.MultipartFile.fromPath('image', file.path));
    request.fields['firstname'] = fname;
    request.fields['lastname'] = lname;
    request.fields['cnic'] = cnic;
    request.fields['address'] = address;
    request.fields['mobileno'] = mobileno;
    request.fields['roleid'] = 4.toString();
    request.fields['rolename'] = 'gatekeeper';
    request.fields['password'] = password;
    request.fields['gateno'] = gateno;
    request.fields['subadminid'] = subadminid.toString();
    request.fields['societyid'] = societyid.toString();

    var responsed = await request.send();
    var response = await Http.Response.fromStream(responsed);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      print(data);
      print(response.body);
      Get.snackbar("GateKeeper Register Successfully", "");
      Get.offAndToNamed(gatekeeperscreen, arguments: user);
    } else if (response.statusCode == 403) {
      isLoading = false;
      update();
      var data = jsonDecode(response.body.toString());

      Get.snackbar(
        "Error",
        data.toString(),
      );
    } else {
      isLoading = false;
      update();

      Get.snackbar("Failed to Register", "");
    }
  }

  void togglePasswordView() {
    isHidden = !isHidden;
    update();
  }
}
