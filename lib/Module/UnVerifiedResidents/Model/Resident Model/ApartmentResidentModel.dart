/// success : true
/// data : [{"id":64,"residentid":64,"subadminid":2,"country":"🇵🇰    Pakistan","state":"Punjab","city":"Rawalpindi District","houseaddress":"Rawat Enclave,suleman buildings, Floor 1,Apartment 52","vechileno":"rwp0666","residenttype":"Rental","propertytype":"apartment","committeemember":0,"status":0,"created_at":"2023-03-26T14:39:37.000000Z","updated_at":"2023-03-26T14:40:56.000000Z","societyid":1,"buildingid":15,"societybuildingfloorid":49,"societybuildingapartmentid":3173,"measurementid":3,"firstname":"Rabail","lastname":"Bashir","cnic":"03015566446","address":"---","mobileno":"03215550979","password":"$2y$10$/GKixkJqR2mbBROoKyMLIeUvrHcu9sI52KrP6XR1v6GFb3gZi.CQm","roleid":3,"rolename":"resident","image":"images/user.png","fcmtoken":"eA86ApJRQ0-NN_sTReuliX:APA91bFVGs3kutgvUlqR_HitDTzSj9FXR8_E6R9jCouwZPrQbIPTS8g4tGKPkyxDv5XFvomcc8VRJWOQAB9Y9BVRqXJXVuAPIORR3ExFO8WRmK6ifkYo8mkGwG9FiVtkXhzIRjLkUTKK","society":[{"id":1,"country":"🇵🇰    Pakistan","state":"Punjab","city":"Rawalpindi","area":"Rawat","type":"society","name":"Rawat Enclave","address":"Kallar Syedian Road","superadminid":1,"structuretype":1,"created_at":"2023-03-19T09:20:55.000000Z","updated_at":"2023-03-19T09:20:55.000000Z"}],"building":[{"id":15,"subadminid":2,"superadminid":1,"societyid":1,"societybuildingname":"suleman buildings","dynamicid":1,"type":"street society building","created_at":"2023-03-26T08:09:29.000000Z","updated_at":"2023-03-26T08:09:29.000000Z"}],"floor":[{"id":49,"name":"Floor 1","buildingid":15,"created_at":"2023-03-26T08:09:36.000000Z","updated_at":"2023-03-26T08:09:36.000000Z"}],"apartment":[{"id":3173,"societybuildingfloorid":49,"name":"Apartment 52","typeid":1,"type":"apartment","created_at":"2023-03-26T08:09:46.000000Z","updated_at":"2023-03-26T08:09:46.000000Z"}],"measurement":[{"id":3,"subadminid":2,"type":"apartment","unit":"sqft","charges":10000,"chargesafterduedate":10500,"appcharges":200,"tax":1500,"area":1000,"bedrooms":10,"status":0,"created_at":"2023-03-23T07:56:30.000000Z","updated_at":"2023-03-23T07:56:30.000000Z"}],"owner":[{"id":7,"residentid":64,"ownername":"iqra khan","owneraddress":"NA","ownermobileno":"090078601","created_at":"2023-03-26T14:40:56.000000Z","updated_at":"2023-03-26T14:40:56.000000Z"}]}]

class ApartmentResidentModel {
  ApartmentResidentModel({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  ApartmentResidentModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Data>? _data;
ApartmentResidentModel copyWith({  bool? success,
  List<Data>? data,
}) => ApartmentResidentModel(  success: success ?? _success,
  data: data ?? _data,
);
  bool? get success => _success;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 64
/// residentid : 64
/// subadminid : 2
/// country : "🇵🇰    Pakistan"
/// state : "Punjab"
/// city : "Rawalpindi District"
/// houseaddress : "Rawat Enclave,suleman buildings, Floor 1,Apartment 52"
/// vechileno : "rwp0666"
/// residenttype : "Rental"
/// propertytype : "apartment"
/// committeemember : 0
/// status : 0
/// created_at : "2023-03-26T14:39:37.000000Z"
/// updated_at : "2023-03-26T14:40:56.000000Z"
/// societyid : 1
/// buildingid : 15
/// societybuildingfloorid : 49
/// societybuildingapartmentid : 3173
/// measurementid : 3
/// firstname : "Rabail"
/// lastname : "Bashir"
/// cnic : "03015566446"
/// address : "---"
/// mobileno : "03215550979"
/// password : "$2y$10$/GKixkJqR2mbBROoKyMLIeUvrHcu9sI52KrP6XR1v6GFb3gZi.CQm"
/// roleid : 3
/// rolename : "resident"
/// image : "images/user.png"
/// fcmtoken : "eA86ApJRQ0-NN_sTReuliX:APA91bFVGs3kutgvUlqR_HitDTzSj9FXR8_E6R9jCouwZPrQbIPTS8g4tGKPkyxDv5XFvomcc8VRJWOQAB9Y9BVRqXJXVuAPIORR3ExFO8WRmK6ifkYo8mkGwG9FiVtkXhzIRjLkUTKK"
/// society : [{"id":1,"country":"🇵🇰    Pakistan","state":"Punjab","city":"Rawalpindi","area":"Rawat","type":"society","name":"Rawat Enclave","address":"Kallar Syedian Road","superadminid":1,"structuretype":1,"created_at":"2023-03-19T09:20:55.000000Z","updated_at":"2023-03-19T09:20:55.000000Z"}]
/// building : [{"id":15,"subadminid":2,"superadminid":1,"societyid":1,"societybuildingname":"suleman buildings","dynamicid":1,"type":"street society building","created_at":"2023-03-26T08:09:29.000000Z","updated_at":"2023-03-26T08:09:29.000000Z"}]
/// floor : [{"id":49,"name":"Floor 1","buildingid":15,"created_at":"2023-03-26T08:09:36.000000Z","updated_at":"2023-03-26T08:09:36.000000Z"}]
/// apartment : [{"id":3173,"societybuildingfloorid":49,"name":"Apartment 52","typeid":1,"type":"apartment","created_at":"2023-03-26T08:09:46.000000Z","updated_at":"2023-03-26T08:09:46.000000Z"}]
/// measurement : [{"id":3,"subadminid":2,"type":"apartment","unit":"sqft","charges":10000,"chargesafterduedate":10500,"appcharges":200,"tax":1500,"area":1000,"bedrooms":10,"status":0,"created_at":"2023-03-23T07:56:30.000000Z","updated_at":"2023-03-23T07:56:30.000000Z"}]
/// owner : [{"id":7,"residentid":64,"ownername":"iqra khan","owneraddress":"NA","ownermobileno":"090078601","created_at":"2023-03-26T14:40:56.000000Z","updated_at":"2023-03-26T14:40:56.000000Z"}]

class Data {
  Data({
      int? id, 
      int? residentid, 
      int? subadminid, 
      String? country, 
      String? state, 
      String? city, 
      String? houseaddress, 
      String? vechileno, 
      String? residenttype, 
      String? propertytype, 
      int? committeemember, 
      int? status, 
      String? createdAt, 
      String? updatedAt, 
      int? societyid, 
      int? buildingid, 
      int? societybuildingfloorid, 
      int? societybuildingapartmentid, 
      int? measurementid, 
      String? firstname, 
      String? lastname, 
      String? cnic, 
      String? address, 
      String? mobileno, 
      String? password, 
      int? roleid, 
      String? rolename, 
      String? image, 
      String? fcmtoken, 
      List<Society>? society, 
      List<Building>? building, 
      List<Floor>? floor, 
      List<Apartment>? apartment, 
      List<Measurement>? measurement, 
      List<Owner>? owner,}){
    _id = id;
    _residentid = residentid;
    _subadminid = subadminid;
    _country = country;
    _state = state;
    _city = city;
    _houseaddress = houseaddress;
    _vechileno = vechileno;
    _residenttype = residenttype;
    _propertytype = propertytype;
    _committeemember = committeemember;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _societyid = societyid;
    _buildingid = buildingid;
    _societybuildingfloorid = societybuildingfloorid;
    _societybuildingapartmentid = societybuildingapartmentid;
    _measurementid = measurementid;
    _firstname = firstname;
    _lastname = lastname;
    _cnic = cnic;
    _address = address;
    _mobileno = mobileno;
    _password = password;
    _roleid = roleid;
    _rolename = rolename;
    _image = image;
    _fcmtoken = fcmtoken;
    _society = society;
    _building = building;
    _floor = floor;
    _apartment = apartment;
    _measurement = measurement;
    _owner = owner;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _residentid = json['residentid'];
    _subadminid = json['subadminid'];
    _country = json['country'];
    _state = json['state'];
    _city = json['city'];
    _houseaddress = json['houseaddress'];
    _vechileno = json['vechileno'];
    _residenttype = json['residenttype'];
    _propertytype = json['propertytype'];
    _committeemember = json['committeemember'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _societyid = json['societyid'];
    _buildingid = json['buildingid'];
    _societybuildingfloorid = json['societybuildingfloorid'];
    _societybuildingapartmentid = json['societybuildingapartmentid'];
    _measurementid = json['measurementid'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _cnic = json['cnic'];
    _address = json['address'];
    _mobileno = json['mobileno'];
    _password = json['password'];
    _roleid = json['roleid'];
    _rolename = json['rolename'];
    _image = json['image'];
    _fcmtoken = json['fcmtoken'];
    if (json['society'] != null) {
      _society = [];
      json['society'].forEach((v) {
        _society?.add(Society.fromJson(v));
      });
    }
    if (json['building'] != null) {
      _building = [];
      json['building'].forEach((v) {
        _building?.add(Building.fromJson(v));
      });
    }
    if (json['floor'] != null) {
      _floor = [];
      json['floor'].forEach((v) {
        _floor?.add(Floor.fromJson(v));
      });
    }
    if (json['apartment'] != null) {
      _apartment = [];
      json['apartment'].forEach((v) {
        _apartment?.add(Apartment.fromJson(v));
      });
    }
    if (json['measurement'] != null) {
      _measurement = [];
      json['measurement'].forEach((v) {
        _measurement?.add(Measurement.fromJson(v));
      });
    }
    if (json['owner'] != null) {
      _owner = [];
      json['owner'].forEach((v) {
        _owner?.add(Owner.fromJson(v));
      });
    }
  }
  int? _id;
  int? _residentid;
  int? _subadminid;
  String? _country;
  String? _state;
  String? _city;
  String? _houseaddress;
  String? _vechileno;
  String? _residenttype;
  String? _propertytype;
  int? _committeemember;
  int? _status;
  String? _createdAt;
  String? _updatedAt;
  int? _societyid;
  int? _buildingid;
  int? _societybuildingfloorid;
  int? _societybuildingapartmentid;
  int? _measurementid;
  String? _firstname;
  String? _lastname;
  String? _cnic;
  String? _address;
  String? _mobileno;
  String? _password;
  int? _roleid;
  String? _rolename;
  String? _image;
  String? _fcmtoken;
  List<Society>? _society;
  List<Building>? _building;
  List<Floor>? _floor;
  List<Apartment>? _apartment;
  List<Measurement>? _measurement;
  List<Owner>? _owner;
Data copyWith({  int? id,
  int? residentid,
  int? subadminid,
  String? country,
  String? state,
  String? city,
  String? houseaddress,
  String? vechileno,
  String? residenttype,
  String? propertytype,
  int? committeemember,
  int? status,
  String? createdAt,
  String? updatedAt,
  int? societyid,
  int? buildingid,
  int? societybuildingfloorid,
  int? societybuildingapartmentid,
  int? measurementid,
  String? firstname,
  String? lastname,
  String? cnic,
  String? address,
  String? mobileno,
  String? password,
  int? roleid,
  String? rolename,
  String? image,
  String? fcmtoken,
  List<Society>? society,
  List<Building>? building,
  List<Floor>? floor,
  List<Apartment>? apartment,
  List<Measurement>? measurement,
  List<Owner>? owner,
}) => Data(  id: id ?? _id,
  residentid: residentid ?? _residentid,
  subadminid: subadminid ?? _subadminid,
  country: country ?? _country,
  state: state ?? _state,
  city: city ?? _city,
  houseaddress: houseaddress ?? _houseaddress,
  vechileno: vechileno ?? _vechileno,
  residenttype: residenttype ?? _residenttype,
  propertytype: propertytype ?? _propertytype,
  committeemember: committeemember ?? _committeemember,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  societyid: societyid ?? _societyid,
  buildingid: buildingid ?? _buildingid,
  societybuildingfloorid: societybuildingfloorid ?? _societybuildingfloorid,
  societybuildingapartmentid: societybuildingapartmentid ?? _societybuildingapartmentid,
  measurementid: measurementid ?? _measurementid,
  firstname: firstname ?? _firstname,
  lastname: lastname ?? _lastname,
  cnic: cnic ?? _cnic,
  address: address ?? _address,
  mobileno: mobileno ?? _mobileno,
  password: password ?? _password,
  roleid: roleid ?? _roleid,
  rolename: rolename ?? _rolename,
  image: image ?? _image,
  fcmtoken: fcmtoken ?? _fcmtoken,
  society: society ?? _society,
  building: building ?? _building,
  floor: floor ?? _floor,
  apartment: apartment ?? _apartment,
  measurement: measurement ?? _measurement,
  owner: owner ?? _owner,
);
  int? get id => _id;
  int? get residentid => _residentid;
  int? get subadminid => _subadminid;
  String? get country => _country;
  String? get state => _state;
  String? get city => _city;
  String? get houseaddress => _houseaddress;
  String? get vechileno => _vechileno;
  String? get residenttype => _residenttype;
  String? get propertytype => _propertytype;
  int? get committeemember => _committeemember;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get societyid => _societyid;
  int? get buildingid => _buildingid;
  int? get societybuildingfloorid => _societybuildingfloorid;
  int? get societybuildingapartmentid => _societybuildingapartmentid;
  int? get measurementid => _measurementid;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get cnic => _cnic;
  String? get address => _address;
  String? get mobileno => _mobileno;
  String? get password => _password;
  int? get roleid => _roleid;
  String? get rolename => _rolename;
  String? get image => _image;
  String? get fcmtoken => _fcmtoken;
  List<Society>? get society => _society;
  List<Building>? get building => _building;
  List<Floor>? get floor => _floor;
  List<Apartment>? get apartment => _apartment;
  List<Measurement>? get measurement => _measurement;
  List<Owner>? get owner => _owner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['residentid'] = _residentid;
    map['subadminid'] = _subadminid;
    map['country'] = _country;
    map['state'] = _state;
    map['city'] = _city;
    map['houseaddress'] = _houseaddress;
    map['vechileno'] = _vechileno;
    map['residenttype'] = _residenttype;
    map['propertytype'] = _propertytype;
    map['committeemember'] = _committeemember;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['societyid'] = _societyid;
    map['buildingid'] = _buildingid;
    map['societybuildingfloorid'] = _societybuildingfloorid;
    map['societybuildingapartmentid'] = _societybuildingapartmentid;
    map['measurementid'] = _measurementid;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['cnic'] = _cnic;
    map['address'] = _address;
    map['mobileno'] = _mobileno;
    map['password'] = _password;
    map['roleid'] = _roleid;
    map['rolename'] = _rolename;
    map['image'] = _image;
    map['fcmtoken'] = _fcmtoken;
    if (_society != null) {
      map['society'] = _society?.map((v) => v.toJson()).toList();
    }
    if (_building != null) {
      map['building'] = _building?.map((v) => v.toJson()).toList();
    }
    if (_floor != null) {
      map['floor'] = _floor?.map((v) => v.toJson()).toList();
    }
    if (_apartment != null) {
      map['apartment'] = _apartment?.map((v) => v.toJson()).toList();
    }
    if (_measurement != null) {
      map['measurement'] = _measurement?.map((v) => v.toJson()).toList();
    }
    if (_owner != null) {
      map['owner'] = _owner?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 7
/// residentid : 64
/// ownername : "iqra khan"
/// owneraddress : "NA"
/// ownermobileno : "090078601"
/// created_at : "2023-03-26T14:40:56.000000Z"
/// updated_at : "2023-03-26T14:40:56.000000Z"

class Owner {
  Owner({
      int? id, 
      int? residentid, 
      String? ownername, 
      String? owneraddress, 
      String? ownermobileno, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _residentid = residentid;
    _ownername = ownername;
    _owneraddress = owneraddress;
    _ownermobileno = ownermobileno;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Owner.fromJson(dynamic json) {
    _id = json['id'];
    _residentid = json['residentid'];
    _ownername = json['ownername'];
    _owneraddress = json['owneraddress'];
    _ownermobileno = json['ownermobileno'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _residentid;
  String? _ownername;
  String? _owneraddress;
  String? _ownermobileno;
  String? _createdAt;
  String? _updatedAt;
Owner copyWith({  int? id,
  int? residentid,
  String? ownername,
  String? owneraddress,
  String? ownermobileno,
  String? createdAt,
  String? updatedAt,
}) => Owner(  id: id ?? _id,
  residentid: residentid ?? _residentid,
  ownername: ownername ?? _ownername,
  owneraddress: owneraddress ?? _owneraddress,
  ownermobileno: ownermobileno ?? _ownermobileno,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get residentid => _residentid;
  String? get ownername => _ownername;
  String? get owneraddress => _owneraddress;
  String? get ownermobileno => _ownermobileno;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['residentid'] = _residentid;
    map['ownername'] = _ownername;
    map['owneraddress'] = _owneraddress;
    map['ownermobileno'] = _ownermobileno;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 3
/// subadminid : 2
/// type : "apartment"
/// unit : "sqft"
/// charges : 10000
/// chargesafterduedate : 10500
/// appcharges : 200
/// tax : 1500
/// area : 1000
/// bedrooms : 10
/// status : 0
/// created_at : "2023-03-23T07:56:30.000000Z"
/// updated_at : "2023-03-23T07:56:30.000000Z"

class Measurement {
  Measurement({
      int? id, 
      int? subadminid, 
      String? type, 
      String? unit, 
      int? charges, 
      int? chargesafterduedate, 
      int? appcharges, 
      int? tax, 
      int? area, 
      int? bedrooms, 
      int? status, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _subadminid = subadminid;
    _type = type;
    _unit = unit;
    _charges = charges;
    _chargesafterduedate = chargesafterduedate;
    _appcharges = appcharges;
    _tax = tax;
    _area = area;
    _bedrooms = bedrooms;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Measurement.fromJson(dynamic json) {
    _id = json['id'];
    _subadminid = json['subadminid'];
    _type = json['type'];
    _unit = json['unit'];
    _charges = json['charges'];
    _chargesafterduedate = json['chargesafterduedate'];
    _appcharges = json['appcharges'];
    _tax = json['tax'];
    _area = json['area'];
    _bedrooms = json['bedrooms'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _subadminid;
  String? _type;
  String? _unit;
  int? _charges;
  int? _chargesafterduedate;
  int? _appcharges;
  int? _tax;
  int? _area;
  int? _bedrooms;
  int? _status;
  String? _createdAt;
  String? _updatedAt;
Measurement copyWith({  int? id,
  int? subadminid,
  String? type,
  String? unit,
  int? charges,
  int? chargesafterduedate,
  int? appcharges,
  int? tax,
  int? area,
  int? bedrooms,
  int? status,
  String? createdAt,
  String? updatedAt,
}) => Measurement(  id: id ?? _id,
  subadminid: subadminid ?? _subadminid,
  type: type ?? _type,
  unit: unit ?? _unit,
  charges: charges ?? _charges,
  chargesafterduedate: chargesafterduedate ?? _chargesafterduedate,
  appcharges: appcharges ?? _appcharges,
  tax: tax ?? _tax,
  area: area ?? _area,
  bedrooms: bedrooms ?? _bedrooms,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get subadminid => _subadminid;
  String? get type => _type;
  String? get unit => _unit;
  int? get charges => _charges;
  int? get chargesafterduedate => _chargesafterduedate;
  int? get appcharges => _appcharges;
  int? get tax => _tax;
  int? get area => _area;
  int? get bedrooms => _bedrooms;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['subadminid'] = _subadminid;
    map['type'] = _type;
    map['unit'] = _unit;
    map['charges'] = _charges;
    map['chargesafterduedate'] = _chargesafterduedate;
    map['appcharges'] = _appcharges;
    map['tax'] = _tax;
    map['area'] = _area;
    map['bedrooms'] = _bedrooms;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 3173
/// societybuildingfloorid : 49
/// name : "Apartment 52"
/// typeid : 1
/// type : "apartment"
/// created_at : "2023-03-26T08:09:46.000000Z"
/// updated_at : "2023-03-26T08:09:46.000000Z"

class Apartment {
  Apartment({
      int? id, 
      int? societybuildingfloorid, 
      String? name, 
      int? typeid, 
      String? type, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _societybuildingfloorid = societybuildingfloorid;
    _name = name;
    _typeid = typeid;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Apartment.fromJson(dynamic json) {
    _id = json['id'];
    _societybuildingfloorid = json['societybuildingfloorid'];
    _name = json['name'];
    _typeid = json['typeid'];
    _type = json['type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _societybuildingfloorid;
  String? _name;
  int? _typeid;
  String? _type;
  String? _createdAt;
  String? _updatedAt;
Apartment copyWith({  int? id,
  int? societybuildingfloorid,
  String? name,
  int? typeid,
  String? type,
  String? createdAt,
  String? updatedAt,
}) => Apartment(  id: id ?? _id,
  societybuildingfloorid: societybuildingfloorid ?? _societybuildingfloorid,
  name: name ?? _name,
  typeid: typeid ?? _typeid,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get societybuildingfloorid => _societybuildingfloorid;
  String? get name => _name;
  int? get typeid => _typeid;
  String? get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['societybuildingfloorid'] = _societybuildingfloorid;
    map['name'] = _name;
    map['typeid'] = _typeid;
    map['type'] = _type;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 49
/// name : "Floor 1"
/// buildingid : 15
/// created_at : "2023-03-26T08:09:36.000000Z"
/// updated_at : "2023-03-26T08:09:36.000000Z"

class Floor {
  Floor({
      int? id, 
      String? name, 
      int? buildingid, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _buildingid = buildingid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Floor.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _buildingid = json['buildingid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _name;
  int? _buildingid;
  String? _createdAt;
  String? _updatedAt;
Floor copyWith({  int? id,
  String? name,
  int? buildingid,
  String? createdAt,
  String? updatedAt,
}) => Floor(  id: id ?? _id,
  name: name ?? _name,
  buildingid: buildingid ?? _buildingid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  int? get buildingid => _buildingid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['buildingid'] = _buildingid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 15
/// subadminid : 2
/// superadminid : 1
/// societyid : 1
/// societybuildingname : "suleman buildings"
/// dynamicid : 1
/// type : "street society building"
/// created_at : "2023-03-26T08:09:29.000000Z"
/// updated_at : "2023-03-26T08:09:29.000000Z"

class Building {
  Building({
      int? id, 
      int? subadminid, 
      int? superadminid, 
      int? societyid, 
      String? societybuildingname, 
      int? dynamicid, 
      String? type, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _subadminid = subadminid;
    _superadminid = superadminid;
    _societyid = societyid;
    _societybuildingname = societybuildingname;
    _dynamicid = dynamicid;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Building.fromJson(dynamic json) {
    _id = json['id'];
    _subadminid = json['subadminid'];
    _superadminid = json['superadminid'];
    _societyid = json['societyid'];
    _societybuildingname = json['societybuildingname'];
    _dynamicid = json['dynamicid'];
    _type = json['type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _subadminid;
  int? _superadminid;
  int? _societyid;
  String? _societybuildingname;
  int? _dynamicid;
  String? _type;
  String? _createdAt;
  String? _updatedAt;
Building copyWith({  int? id,
  int? subadminid,
  int? superadminid,
  int? societyid,
  String? societybuildingname,
  int? dynamicid,
  String? type,
  String? createdAt,
  String? updatedAt,
}) => Building(  id: id ?? _id,
  subadminid: subadminid ?? _subadminid,
  superadminid: superadminid ?? _superadminid,
  societyid: societyid ?? _societyid,
  societybuildingname: societybuildingname ?? _societybuildingname,
  dynamicid: dynamicid ?? _dynamicid,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get subadminid => _subadminid;
  int? get superadminid => _superadminid;
  int? get societyid => _societyid;
  String? get societybuildingname => _societybuildingname;
  int? get dynamicid => _dynamicid;
  String? get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['subadminid'] = _subadminid;
    map['superadminid'] = _superadminid;
    map['societyid'] = _societyid;
    map['societybuildingname'] = _societybuildingname;
    map['dynamicid'] = _dynamicid;
    map['type'] = _type;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// country : "🇵🇰    Pakistan"
/// state : "Punjab"
/// city : "Rawalpindi"
/// area : "Rawat"
/// type : "society"
/// name : "Rawat Enclave"
/// address : "Kallar Syedian Road"
/// superadminid : 1
/// structuretype : 1
/// created_at : "2023-03-19T09:20:55.000000Z"
/// updated_at : "2023-03-19T09:20:55.000000Z"

class Society {
  Society({
      int? id, 
      String? country, 
      String? state, 
      String? city, 
      String? area, 
      String? type, 
      String? name, 
      String? address, 
      int? superadminid, 
      int? structuretype, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _country = country;
    _state = state;
    _city = city;
    _area = area;
    _type = type;
    _name = name;
    _address = address;
    _superadminid = superadminid;
    _structuretype = structuretype;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Society.fromJson(dynamic json) {
    _id = json['id'];
    _country = json['country'];
    _state = json['state'];
    _city = json['city'];
    _area = json['area'];
    _type = json['type'];
    _name = json['name'];
    _address = json['address'];
    _superadminid = json['superadminid'];
    _structuretype = json['structuretype'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _country;
  String? _state;
  String? _city;
  String? _area;
  String? _type;
  String? _name;
  String? _address;
  int? _superadminid;
  int? _structuretype;
  String? _createdAt;
  String? _updatedAt;
Society copyWith({  int? id,
  String? country,
  String? state,
  String? city,
  String? area,
  String? type,
  String? name,
  String? address,
  int? superadminid,
  int? structuretype,
  String? createdAt,
  String? updatedAt,
}) => Society(  id: id ?? _id,
  country: country ?? _country,
  state: state ?? _state,
  city: city ?? _city,
  area: area ?? _area,
  type: type ?? _type,
  name: name ?? _name,
  address: address ?? _address,
  superadminid: superadminid ?? _superadminid,
  structuretype: structuretype ?? _structuretype,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get country => _country;
  String? get state => _state;
  String? get city => _city;
  String? get area => _area;
  String? get type => _type;
  String? get name => _name;
  String? get address => _address;
  int? get superadminid => _superadminid;
  int? get structuretype => _structuretype;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['country'] = _country;
    map['state'] = _state;
    map['city'] = _city;
    map['area'] = _area;
    map['type'] = _type;
    map['name'] = _name;
    map['address'] = _address;
    map['superadminid'] = _superadminid;
    map['structuretype'] = _structuretype;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}