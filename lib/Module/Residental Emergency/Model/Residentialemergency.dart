class ResidentialEmergeny {
  ResidentialEmergeny({
    required this.data,
  });
  late final List<Data> data;
  
  ResidentialEmergeny.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.residentid,
    required this.societyid,
    required this.subadminid,
    required this.problem,
    required this.description,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.resident,
  });
  late final int id;
  late final int residentid;
  late final int societyid;
  late final int subadminid;
  late final String problem;
  late final String description;
  late final int status;
  late final String createdAt;
  late final String updatedAt;
  late final List<Resident> resident;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    residentid = json['residentid'];
    societyid = json['societyid'];
    subadminid = json['subadminid'];
    problem = json['problem'];
    description = json['description'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    resident = List.from(json['resident']).map((e)=>Resident.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['residentid'] = residentid;
    _data['societyid'] = societyid;
    _data['subadminid'] = subadminid;
    _data['problem'] = problem;
    _data['description'] = description;
    _data['status'] = status;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['resident'] = resident.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Resident {
  Resident({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.cnic,
    required this.address,
    required this.mobileno,
    required this.password,
    required this.roleid,
    required this.rolename,
    required this.image,
     this.fcmtoken,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String firstname;
  late final String lastname;
  late final String cnic;
  late final String address;
  late final String mobileno;
  late final String password;
  late final int roleid;
  late final String rolename;
  late final String image;
  late final Null fcmtoken;
  late final String createdAt;
  late final String updatedAt;
  
  Resident.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    cnic = json['cnic'];
    address = json['address'];
    mobileno = json['mobileno'];
    password = json['password'];
    roleid = json['roleid'];
    rolename = json['rolename'];
    image = json['image'];
    fcmtoken = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
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
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}