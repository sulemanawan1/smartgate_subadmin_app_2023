import 'package:societyadminapp/Module/UnVerifiedResidents/Model/Resident%20Model/ApartmentResidentModel.dart';

class LocalBuildingApartmentResidentModel {
  LocalBuildingApartmentResidentModel({
    required this.success,
    required this.data,
  });
  late final bool success;
  late final List<Data> data;
  
  LocalBuildingApartmentResidentModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.residentid,
    required this.subadminid,
    required this.country,
    required this.state,
    required this.city,
    required this.houseaddress,
    required this.vechileno,
    required this.residenttype,
    required this.propertytype,
    required this.committeemember,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.localbuildingid,
    required this.fid,
    required this.aid,
    required this.measurementid,
    required this.firstname,
    required this.lastname,
    required this.cnic,
    required this.address,
    required this.mobileno,
    required this.password,
    required this.roleid,
    required this.rolename,
    required this.image,
    required this.fcmtoken,
    required this.localbuilding,
    required this.localbuildingfloor,
    required this.localbuildingapartment,
    required this.measurement,
    required this.owner,
  });
  late final int id;
  late final int residentid;
  late final int subadminid;
  late final String country;
  late final String state;
  late final String city;
  late final String houseaddress;
  late final String vechileno;
  late final String residenttype;
  late final String propertytype;
  late final int committeemember;
  late final int status;
  late final String createdAt;
  late final String updatedAt;
  late final int localbuildingid;
  late final int fid;
  late final int aid;
  late final int measurementid;
  late final String firstname;
  late final String lastname;
  late final String cnic;
  late final String address;
  late final String mobileno;
  late final String password;
  late final int roleid;
  late final String rolename;
  late final String image;
  late final String fcmtoken;
  late final List<Localbuilding> localbuilding;
  late final List<Localbuildingfloor> localbuildingfloor;
  late final List<Localbuildingapartment> localbuildingapartment;
  late final List<Measurement> measurement;
  late final List<Owner> owner;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    residentid = json['residentid'];
    subadminid = json['subadminid'];
    country = json['country'];
    state = json['state'];
    city = json['city'];
    houseaddress = json['houseaddress'];
    vechileno = json['vechileno'];
    residenttype = json['residenttype'];
    propertytype = json['propertytype'];
    committeemember = json['committeemember'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    localbuildingid = json['localbuildingid'];
    fid = json['fid'];
    aid = json['aid'];
    measurementid = json['measurementid'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    cnic = json['cnic'];
    address = json['address'];
    mobileno = json['mobileno'];
    password = json['password'];
    roleid = json['roleid'];
    rolename = json['rolename'];
    image = json['image'];
    fcmtoken = json['fcmtoken'];
    localbuilding = List.from(json['localbuilding']).map((e)=>Localbuilding.fromJson(e)).toList();
    localbuildingfloor = List.from(json['localbuildingfloor']).map((e)=>Localbuildingfloor.fromJson(e)).toList();
    localbuildingapartment = List.from(json['localbuildingapartment']).map((e)=>Localbuildingapartment.fromJson(e)).toList();
    measurement = List.from(json['measurement']).map((e)=>Measurement.fromJson(e)).toList();
    owner = List.from(json['owner']).map((e)=>Owner.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['residentid'] = residentid;
    _data['subadminid'] = subadminid;
    _data['country'] = country;
    _data['state'] = state;
    _data['city'] = city;
    _data['houseaddress'] = houseaddress;
    _data['vechileno'] = vechileno;
    _data['residenttype'] = residenttype;
    _data['propertytype'] = propertytype;
    _data['committeemember'] = committeemember;
    _data['status'] = status;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['localbuildingid'] = localbuildingid;
    _data['fid'] = fid;
    _data['aid'] = aid;
    _data['measurementid'] = measurementid;
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['cnic'] = cnic;
    _data['address'] = address;
    _data['mobileno'] = mobileno;
    _data['password'] = password;
    _data['roleid'] = roleid;
    _data['rolename'] = rolename;
    _data['image'] = image;
    _data['fcmtoken'] = fcmtoken;
    _data['localbuilding'] = localbuilding.map((e)=>e.toJson()).toList();
    _data['localbuildingfloor'] = localbuildingfloor.map((e)=>e.toJson()).toList();
    _data['localbuildingapartment'] = localbuildingapartment.map((e)=>e.toJson()).toList();
    _data['measurement'] = measurement.map((e)=>e.toJson()).toList();
    _data['owner'] = owner.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Localbuilding {
  Localbuilding({
     this.id,
      this.country,
      this.state,
      this.city,
      this.area,
      this.type,
      this.name,
      this.address,
      this.superadminid,
      this.structuretype,
      this.createdAt,
      this.updatedAt,
  });
   int? id;
   String? country;
   String? state;
   String? city;
   String? area;
   String? type;
   String? name;
   String? address;
   int? superadminid;
   int? structuretype;
   String? createdAt;
   String? updatedAt;
  
  Localbuilding.fromJson(Map<String, dynamic> json){
    id = json['id'];
    country = json['country'];
    state = json['state'];
    city = json['city'];
    area = json['area'];
    type = json['type'];
    name = json['name'];
    address = json['address'];
    superadminid = json['superadminid'];
    structuretype = json['structuretype'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['country'] = country;
    _data['state'] = state;
    _data['city'] = city;
    _data['area'] = area;
    _data['type'] = type;
    _data['name'] = name;
    _data['address'] = address;
    _data['superadminid'] = superadminid;
    _data['structuretype'] = structuretype;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Localbuildingfloor {
  Localbuildingfloor({
     this.id,
     this.name,
     this.buildingid,
     this.subadminid,
     this.createdAt,
     this.updatedAt,
  });
   int? id;
   String? name;
   int? buildingid;
   int? subadminid;
   String? createdAt;
   String? updatedAt;
  
  Localbuildingfloor.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    buildingid = json['buildingid'];
    subadminid = json['subadminid'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['buildingid'] = buildingid;
    _data['subadminid'] = subadminid;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Localbuildingapartment {
  Localbuildingapartment({
     this.id,
     this.localbuildingfloorid,
     this.name,
     this.createdAt,
     this.updatedAt,
  });
   int? id;
   int? localbuildingfloorid;
   String? name;
   String? createdAt;
   String? updatedAt;
  
  Localbuildingapartment.fromJson(Map<String, dynamic> json){
    id = json['id'];
    localbuildingfloorid = json['localbuildingfloorid'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['localbuildingfloorid'] = localbuildingfloorid;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}


class Owner {
  Owner({
    required this.id,
    required this.residentid,
    required this.ownername,
    required this.owneraddress,
    required this.ownermobileno,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final int residentid;
  late final String ownername;
  late final String owneraddress;
  late final String ownermobileno;
  late final String createdAt;
  late final String updatedAt;
  
  Owner.fromJson(Map<String, dynamic> json){
    id = json['id'];
    residentid = json['residentid'];
    ownername = json['ownername'];
    owneraddress = json['owneraddress'];
    ownermobileno = json['ownermobileno'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['residentid'] = residentid;
    _data['ownername'] = ownername;
    _data['owneraddress'] = owneraddress;
    _data['ownermobileno'] = ownermobileno;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}