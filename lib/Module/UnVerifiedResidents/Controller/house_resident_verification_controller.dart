import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/HousesApartmentsModel.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/Society.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/Street.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/block.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/house.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/phases.dart';
import 'package:societyadminapp/Module/UnVerifiedResidents/Model/Resident Model/HouseResident.dart' as D;
import 'package:societyadminapp/Routes/set_routes.dart';
import '../../../Constants/api_routes.dart';
import '../../Login/Model/User.dart';
import 'package:http/http.dart' as Http;
class HouseResidentVerificationController extends GetxController {
  var data = Get.arguments;
  late final User userdata;
  late D.Data resident;

  String country = '';
  String state = '';
  String city = '';
  var isProperty = false;

  TextEditingController vehicleNoController = TextEditingController();
  TextEditingController houseAddressDetailController = TextEditingController();

  Society? societies;
  Phase? phases;
  Block? blocks;
  Street? streets;
  House? houses;
  HousesApartmentsModel? housesApartmentsModel;



  /*  for  houses */
  var phaseli = <Phase>[];
  var blockli = <Block>[];
  var streetli = <Street>[];
  var houseli = <House>[];
  var housesApartments = <HousesApartmentsModel>[];


  Future<List<Phase>> viewAllPhasesApi({required dynamicId,required bearerToken}) async {
    print('phases api');

    print(bearerToken);
    print(dynamicId);

    var response = await Dio().get(
        Api.view_all_phases + '/' + dynamicId.toString(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${bearerToken}"
        }));
    var data = response.data['data'];

    phaseli = (data as List)
        .map((e) => Phase(
        id: e['id'],
        address: e['address'],
        subadminid: e['subadminid'],
        societyid: e['societyid'],iteration: e['iteration'],dynamiId: e['dynamicid']
    ))
        .toList();

    return phaseli;
  }

  Future<List<Block>> viewAllBlocksApi({required  dynamicId,required type, required bearerToken}) async {
    print('Block aya');
    print(bearerToken);
    print(dynamicId);
    print(type);

    var response = await Dio().get(Api.blocks + '/' +dynamicId.toString() +'/'+ type.toString(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${bearerToken}"
        }));
    var data = response.data['data'];
    print(data);
    blockli = (data as List)
        .map((e) => Block(
        id: e['id'],
        address: e['address'],
        dynamicId: e['dynamicid'],iteration: e['iteration']
    ))
        .toList();

    return blockli;
  }

  Future<List<Street>> viewAllStreetsApi({required  dynamicId ,required type,required bearerToken}) async {
    print('Street aya');
    print(bearerToken);
    print(dynamicId);
    print(type);
    var response = await Dio().get(
        Api.streets + '/' + dynamicId.toString()+ '/' + type.toString(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${bearerToken}"
        }));
    var data = response.data['data'];


    streetli = (data as List)
        .map((e) => Street(
        id: e['id'],
        address: e['address'],
        dynamicId: e['dynamicid'],iteration: e['iteration'],
        subadminid: e['subadminid']
    ))
        .toList();

    return streetli;
  }
  Future<List<House>> viewAllHousesApi({required streetid,required bearerToken}) async {
    print('House aya');
    print(bearerToken);
    print(streetid);

    var response = await Dio().get(
        Api.view_properties_for_residents + '/' + streetid.toString(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${bearerToken}"
        }));
    var data = response.data['data'];

    houseli = (data as List)
        .map((e) => House(
        id: e['id'],
        address: e['address'],
        sid: e['sid'],
        type: e['type'],iteration: e['iteration'],
        typeid: e['typeid']))
        .toList();

    return houseli;
  }

  SelectedProperty(val) async {

    blocks = null;
    streets = null;

    housesApartmentsModel = null;

    blockli.clear();
    streetli.clear();
    houseli.clear();
    housesApartments.clear();
    houseAddressDetailController.clear();


    update();
  }
  SelectedHouse(val) {
    houses = val;
    housesApartments.clear();
    housesApartmentsModel = null;
    update();
  }

  SelectedSociety(val) async {


    phases = null;
    blocks = null;
    streets = null;
    houses = null;

    phaseli.clear();
    blockli.clear();
    streetli.clear();
    houseli.clear();
    houseAddressDetailController.clear();
    societies = val;

    update();
  }

  SelectedPhase(val) async {


    blocks = null;
    streets = null;
    houses = null;

    housesApartmentsModel = null;

    blockli.clear();
    streetli.clear();
    houseli.clear();

    housesApartments.clear();
    houseAddressDetailController.clear();

    phases = val;

    update();
  }

  SelectedBlock(val) async {
    print('dropdown val $val');

    houses = null;
    streets = null;
    streetli.clear();
    houseli.clear();


    blocks = val;
    update();
  }

  SelectedStreet(val) async {
    print('dropdown val $val');
    houses = null;
    houseli.clear();

    houseAddressDetailController.clear();
    streets = val;

    update();
  }

  Future<List<HousesApartmentsModel>> housesApartmentsModelApi(
      {required int subadminid,
        required String token,
        required String type}) async {
    print(subadminid);
    print(token);
    print(type);

    var response = await Dio().get(
        Api.housesapartmentmeasurements +
            '/' +
            subadminid.toString() +
            '/' +
            type.toString(),
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${token}"
        }));
    var data = response.data['data'];

    housesApartments = (data as List)
        .map((e) => HousesApartmentsModel(
        id: e['id'],
        subadminid: e['subadminid'],
        charges: e['charges'],
        area: e['area'],
        bedrooms: e['bedrooms'],
        status: e['status'],
        type: e['type'],
        unit: e['unit']))
        .toList();

    return housesApartments;
  }




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    userdata = data[0];
    resident = data[1];
    // SelectedPhase(resident.phase![0]);
    // SelectedBlock(resident.block![0]);
    print(resident.society!.first.structuretype);

    state = resident.state!;
    city = resident.city!;
    vehicleNoController.text = resident.vechileno!;

    update();
  }

  Future verifyResidentApi({
 residentid,
    required int status,
    pid,
     bid,
 sid,
   propertyid,
     measurementid,
    vechileno,
    required String token,
  }) async {
    final response = await Http.post(Uri.parse(Api.verifyhouseresident),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': "Bearer $token"
        },
        body: jsonEncode(<String, dynamic>{
          "residentid": residentid,
          "status": status,
          'pid':pid,
          'bid':bid,
          'sid':sid,
          'propertyid':propertyid,
          'measurementid':measurementid,
          "vechileno":vechileno
        }));

    print(response.body);

    if (response.statusCode == 200) {


      Get.offNamed(unverifiedresident,arguments: userdata);


      update();
    } else if (response.statusCode == 403) {

      var data = jsonDecode(response.body.toString());
      var errors =data['errors'] as List;

      for(int i=0; i<errors.length;i++)
      {
        Get.snackbar('Error', errors[i].toString());
      }
    }
  }


  isPropertyHouseApartment() {
    isProperty = true;
    update();
  }

  SelectedHousesApartments(val) {
    housesApartmentsModel = val;

    update();
  }

}
