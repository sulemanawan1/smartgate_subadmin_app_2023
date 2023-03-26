import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;
import 'package:societyadminapp/Routes/set_routes.dart';

import '../../../../Constants/api_routes.dart';
import '../../../Login/Model/User.dart';

class AddPhasesController extends GetxController {
  var data = Get.arguments;
  int? index;
  late final User user;

  bool isLoading = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user = data;
  }

  final fromController = TextEditingController();
  final toController = TextEditingController();
  final addressController = TextEditingController();

  addPhaseApi({
    required String bearerToken,
    required int subadminid,
    required int societyid,
    required int superadminid,
    required int dynamicid,
    required String from,
    required String to,
    required String address,
  }) async {
    isLoading = true;
    update();

    Map<String, String> headers = {"Authorization": "Bearer $bearerToken"};
    var request = Http.MultipartRequest('POST', Uri.parse(Api.addphases));
    request.headers.addAll(headers);

    request.fields['from'] = from;

    request.fields['to'] = to;
    request.fields['address'] = address;

    request.fields['subadminid'] = subadminid.toString();
    request.fields['societyid'] = societyid.toString();
    request.fields['superadminid'] = superadminid.toString();
    request.fields['dynamicid'] = dynamicid.toString();

    var responsed = await request.send();
    var response = await Http.Response.fromStream(responsed);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());

      print(response.body);
      Get.snackbar("Phases Add Successfully", "");

      Get.offNamed(phasess, arguments: user);
      
    } else if (response.statusCode == 403) {
      isLoading = false;
      update();
      var data = jsonDecode(response.body.toString());
      (data['errors'] as List)
          .map((e) => Get.snackbar(
                "Error",
                e.toString(),
              ))
          .toList();
    } else {
      isLoading = false;
      update();

      Get.snackbar("Failed to Add Phases", "");
    }
  }
}
