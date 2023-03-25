/// success : true
/// data : [{"id":4,"residentid":4,"subadminid":2,"country":"🇵🇰    Pakistan","state":"null","city":"null","houseaddress":"house 1","vechileno":"","residenttype":"Rental","propertytype":"house","committeemember":0,"status":0,"created_at":"2023-03-14T08:17:41.000000Z","updated_at":"2023-03-14T08:18:35.000000Z","societyid":1,"pid":1,"bid":1,"sid":3,"propertyid":27,"measurementid":1,"firstname":"king","lastname":"khan","cnic":"54321","address":"---","mobileno":"999","password":"$2y$10$JKjJxeqPC7Tfg7tA9PaXsOaom101/U.UEFhSXuBHEbEL/LRifVvq.","roleid":3,"rolename":"resident","image":"1678781861.jpg","fcmtoken":"diTns3WsS9OQCB8WDfYL5P:APA91bGxUvv5BlrfJs0-Ddh6Meiv7rxhqNaBOcZhjv4AOHXdWfXum-ZtSAyH6zumL_-JSFbLOLk1-Y3ZnxdX0-YYz32JqI-62URWsKRIPlZ9NYV6PDG-USdpudxYvs9vuYg6tmfJG0EJ","society":[{"id":1,"country":"Pakistan","state":"Punjab","city":"Rawat","area":"T-Chowk","type":"society","name":"Rawat Enclave","address":"Kallar Syedian Road","superadminid":1,"structuretype":3,"created_at":"2023-03-14T06:32:40.000000Z","updated_at":"2023-03-14T06:32:40.000000Z"}],"phase":[{"id":1,"address":"phase","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:11.000000Z","updated_at":"2023-03-14T08:16:11.000000Z"}],"block":[{"id":1,"address":"block","type":"phase","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:22.000000Z","updated_at":"2023-03-14T08:16:22.000000Z"}],"street":[{"id":3,"address":"street","type":"blocks","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:35.000000Z","updated_at":"2023-03-14T08:16:35.000000Z"}],"property":[{"id":27,"address":"house","iteration":"1","streetid":3,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:47.000000Z","updated_at":"2023-03-14T08:16:47.000000Z"}],"measurement":[{"id":1,"subadminid":2,"type":"house","unit":"marla","charges":5000,"chargesafterduedate":5250,"appcharges":100,"tax":750,"area":5,"bedrooms":5,"status":0,"created_at":"2023-03-14T06:42:59.000000Z","updated_at":"2023-03-14T06:42:59.000000Z"}],"owner":[{"id":1,"residentid":4,"ownername":"kinger","owneraddress":"NA","ownermobileno":"bn","created_at":"2023-03-14T08:18:35.000000Z","updated_at":"2023-03-14T08:18:35.000000Z"}]}]

class HouseResident {
  HouseResident({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  HouseResident.fromJson(dynamic json) {
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
HouseResident copyWith({  bool? success,
  List<Data>? data,
}) => HouseResident(  success: success ?? _success,
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

/// id : 4
/// residentid : 4
/// subadminid : 2
/// country : "🇵🇰    Pakistan"
/// state : "null"
/// city : "null"
/// houseaddress : "house 1"
/// vechileno : ""
/// residenttype : "Rental"
/// propertytype : "house"
/// committeemember : 0
/// status : 0
/// created_at : "2023-03-14T08:17:41.000000Z"
/// updated_at : "2023-03-14T08:18:35.000000Z"
/// societyid : 1
/// pid : 1
/// bid : 1
/// sid : 3
/// propertyid : 27
/// measurementid : 1
/// firstname : "king"
/// lastname : "khan"
/// cnic : "54321"
/// address : "---"
/// mobileno : "999"
/// password : "$2y$10$JKjJxeqPC7Tfg7tA9PaXsOaom101/U.UEFhSXuBHEbEL/LRifVvq."
/// roleid : 3
/// rolename : "resident"
/// image : "1678781861.jpg"
/// fcmtoken : "diTns3WsS9OQCB8WDfYL5P:APA91bGxUvv5BlrfJs0-Ddh6Meiv7rxhqNaBOcZhjv4AOHXdWfXum-ZtSAyH6zumL_-JSFbLOLk1-Y3ZnxdX0-YYz32JqI-62URWsKRIPlZ9NYV6PDG-USdpudxYvs9vuYg6tmfJG0EJ"
/// society : [{"id":1,"country":"Pakistan","state":"Punjab","city":"Rawat","area":"T-Chowk","type":"society","name":"Rawat Enclave","address":"Kallar Syedian Road","superadminid":1,"structuretype":3,"created_at":"2023-03-14T06:32:40.000000Z","updated_at":"2023-03-14T06:32:40.000000Z"}]
/// phase : [{"id":1,"address":"phase","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:11.000000Z","updated_at":"2023-03-14T08:16:11.000000Z"}]
/// block : [{"id":1,"address":"block","type":"phase","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:22.000000Z","updated_at":"2023-03-14T08:16:22.000000Z"}]
/// street : [{"id":3,"address":"street","type":"blocks","iteration":"1","dynamicid":1,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:35.000000Z","updated_at":"2023-03-14T08:16:35.000000Z"}]
/// property : [{"id":27,"address":"house","iteration":"1","streetid":3,"subadminid":2,"societyid":1,"superadminid":1,"created_at":"2023-03-14T08:16:47.000000Z","updated_at":"2023-03-14T08:16:47.000000Z"}]
/// measurement : [{"id":1,"subadminid":2,"type":"house","unit":"marla","charges":5000,"chargesafterduedate":5250,"appcharges":100,"tax":750,"area":5,"bedrooms":5,"status":0,"created_at":"2023-03-14T06:42:59.000000Z","updated_at":"2023-03-14T06:42:59.000000Z"}]
/// owner : [{"id":1,"residentid":4,"ownername":"kinger","owneraddress":"NA","ownermobileno":"bn","created_at":"2023-03-14T08:18:35.000000Z","updated_at":"2023-03-14T08:18:35.000000Z"}]

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
      int? pid,
      int? bid,
      int? sid,
      int? propertyid,
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
      List<Phase>? phase, 
      List<Block>? block, 
      List<Street>? street, 
      List<Property>? property, 
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
    _pid = pid;
    _bid = bid;
    _sid = sid;
    _propertyid = propertyid;
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
    _phase = phase;
    _block = block;
    _street = street;
    _property = property;
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
    _pid = json['pid'];
    _bid = json['bid'];
    _sid = json['sid'];
    _propertyid = json['propertyid'];
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
    if (json['phase'] != null) {
      _phase = [];
      json['phase'].forEach((v) {
        _phase?.add(Phase.fromJson(v));
      });
    }
    if (json['block'] != null) {
      _block = [];
      json['block'].forEach((v) {
        _block?.add(Block.fromJson(v));
      });
    }
    if (json['street'] != null) {
      _street = [];
      json['street'].forEach((v) {
        _street?.add(Street.fromJson(v));
      });
    }
    if (json['property'] != null) {
      _property = [];
      json['property'].forEach((v) {
        _property?.add(Property.fromJson(v));
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
  int? _pid;
  int? _bid;
  int? _sid;
  int? _propertyid;
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
  List<Phase>? _phase;
  List<Block>? _block;
  List<Street>? _street;
  List<Property>? _property;
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
  int? pid,
  int? bid,
  int? sid,
  int? propertyid,
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
  List<Phase>? phase,
  List<Block>? block,
  List<Street>? street,
  List<Property>? property,
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
  pid: pid ?? _pid,
  bid: bid ?? _bid,
  sid: sid ?? _sid,
  propertyid: propertyid ?? _propertyid,
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
  phase: phase ?? _phase,
  block: block ?? _block,
  street: street ?? _street,
  property: property ?? _property,
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
  int? get pid => _pid;
  int? get bid => _bid;
  int? get sid => _sid;
  int? get propertyid => _propertyid;
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
  List<Phase>? get phase => _phase;
  List<Block>? get block => _block;
  List<Street>? get street => _street;
  List<Property>? get property => _property;
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
    map['pid'] = _pid;
    map['bid'] = _bid;
    map['sid'] = _sid;
    map['propertyid'] = _propertyid;
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
    if (_phase != null) {
      map['phase'] = _phase?.map((v) => v.toJson()).toList();
    }
    if (_block != null) {
      map['block'] = _block?.map((v) => v.toJson()).toList();
    }
    if (_street != null) {
      map['street'] = _street?.map((v) => v.toJson()).toList();
    }
    if (_property != null) {
      map['property'] = _property?.map((v) => v.toJson()).toList();
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

/// id : 1
/// residentid : 4
/// ownername : "kinger"
/// owneraddress : "NA"
/// ownermobileno : "bn"
/// created_at : "2023-03-14T08:18:35.000000Z"
/// updated_at : "2023-03-14T08:18:35.000000Z"

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

/// id : 1
/// subadminid : 2
/// type : "house"
/// unit : "marla"
/// charges : 5000
/// chargesafterduedate : 5250
/// appcharges : 100
/// tax : 750
/// area : 5
/// bedrooms : 5
/// status : 0
/// created_at : "2023-03-14T06:42:59.000000Z"
/// updated_at : "2023-03-14T06:42:59.000000Z"

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

/// id : 27
/// address : "house"
/// iteration : "1"
/// streetid : 3
/// subadminid : 2
/// societyid : 1
/// superadminid : 1
/// created_at : "2023-03-14T08:16:47.000000Z"
/// updated_at : "2023-03-14T08:16:47.000000Z"

class Property {
  Property({
      int? id,
      String? address, 
      String? iteration, 
      int? streetid,
      int? subadminid,
      int? societyid,
      int? superadminid,
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _address = address;
    _iteration = iteration;
    _streetid = streetid;
    _subadminid = subadminid;
    _societyid = societyid;
    _superadminid = superadminid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Property.fromJson(dynamic json) {
    _id = json['id'];
    _address = json['address'];
    _iteration = json['iteration'];
    _streetid = json['streetid'];
    _subadminid = json['subadminid'];
    _societyid = json['societyid'];
    _superadminid = json['superadminid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _address;
  String? _iteration;
  int? _streetid;
  int? _subadminid;
  int? _societyid;
  int? _superadminid;
  String? _createdAt;
  String? _updatedAt;
Property copyWith({  int? id,
  String? address,
  String? iteration,
  int? streetid,
  int? subadminid,
  int? societyid,
  int? superadminid,
  String? createdAt,
  String? updatedAt,
}) => Property(  id: id ?? _id,
  address: address ?? _address,
  iteration: iteration ?? _iteration,
  streetid: streetid ?? _streetid,
  subadminid: subadminid ?? _subadminid,
  societyid: societyid ?? _societyid,
  superadminid: superadminid ?? _superadminid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get address => _address;
  String? get iteration => _iteration;
  int? get streetid => _streetid;
  int? get subadminid => _subadminid;
  int? get societyid => _societyid;
  int? get superadminid => _superadminid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['address'] = _address;
    map['iteration'] = _iteration;
    map['streetid'] = _streetid;
    map['subadminid'] = _subadminid;
    map['societyid'] = _societyid;
    map['superadminid'] = _superadminid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 3
/// address : "street"
/// type : "blocks"
/// iteration : "1"
/// dynamicid : 1
/// subadminid : 2
/// societyid : 1
/// superadminid : 1
/// created_at : "2023-03-14T08:16:35.000000Z"
/// updated_at : "2023-03-14T08:16:35.000000Z"

class Street {
  Street({
      int? id,
      String? address, 
      String? type, 
      String? iteration, 
      int? dynamicid,
      int? subadminid,
      int? societyid,
      int? superadminid,
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _address = address;
    _type = type;
    _iteration = iteration;
    _dynamicid = dynamicid;
    _subadminid = subadminid;
    _societyid = societyid;
    _superadminid = superadminid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Street.fromJson(dynamic json) {
    _id = json['id'];
    _address = json['address'];
    _type = json['type'];
    _iteration = json['iteration'];
    _dynamicid = json['dynamicid'];
    _subadminid = json['subadminid'];
    _societyid = json['societyid'];
    _superadminid = json['superadminid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _address;
  String? _type;
  String? _iteration;
  int? _dynamicid;
  int? _subadminid;
  int? _societyid;
  int? _superadminid;
  String? _createdAt;
  String? _updatedAt;
Street copyWith({  int? id,
  String? address,
  String? type,
  String? iteration,
  int? dynamicid,
  int? subadminid,
  int? societyid,
  int? superadminid,
  String? createdAt,
  String? updatedAt,
}) => Street(  id: id ?? _id,
  address: address ?? _address,
  type: type ?? _type,
  iteration: iteration ?? _iteration,
  dynamicid: dynamicid ?? _dynamicid,
  subadminid: subadminid ?? _subadminid,
  societyid: societyid ?? _societyid,
  superadminid: superadminid ?? _superadminid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get address => _address;
  String? get type => _type;
  String? get iteration => _iteration;
  int? get dynamicid => _dynamicid;
  int? get subadminid => _subadminid;
  int? get societyid => _societyid;
  int? get superadminid => _superadminid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['address'] = _address;
    map['type'] = _type;
    map['iteration'] = _iteration;
    map['dynamicid'] = _dynamicid;
    map['subadminid'] = _subadminid;
    map['societyid'] = _societyid;
    map['superadminid'] = _superadminid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// address : "block"
/// type : "phase"
/// iteration : "1"
/// dynamicid : 1
/// subadminid : 2
/// societyid : 1
/// superadminid : 1
/// created_at : "2023-03-14T08:16:22.000000Z"
/// updated_at : "2023-03-14T08:16:22.000000Z"

class Block {
  Block({
      int? id,
      String? address, 
      String? type, 
      String? iteration, 
      int? dynamicid,
      int? subadminid,
      int? societyid,
      int? superadminid,
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _address = address;
    _type = type;
    _iteration = iteration;
    _dynamicid = dynamicid;
    _subadminid = subadminid;
    _societyid = societyid;
    _superadminid = superadminid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Block.fromJson(dynamic json) {
    _id = json['id'];
    _address = json['address'];
    _type = json['type'];
    _iteration = json['iteration'];
    _dynamicid = json['dynamicid'];
    _subadminid = json['subadminid'];
    _societyid = json['societyid'];
    _superadminid = json['superadminid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _address;
  String? _type;
  String? _iteration;
  int? _dynamicid;
  int? _subadminid;
  int? _societyid;
  int? _superadminid;
  String? _createdAt;
  String? _updatedAt;
Block copyWith({  int? id,
  String? address,
  String? type,
  String? iteration,
  int? dynamicid,
  int? subadminid,
  int? societyid,
  int? superadminid,
  String? createdAt,
  String? updatedAt,
}) => Block(  id: id ?? _id,
  address: address ?? _address,
  type: type ?? _type,
  iteration: iteration ?? _iteration,
  dynamicid: dynamicid ?? _dynamicid,
  subadminid: subadminid ?? _subadminid,
  societyid: societyid ?? _societyid,
  superadminid: superadminid ?? _superadminid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get address => _address;
  String? get type => _type;
  String? get iteration => _iteration;
  int? get dynamicid => _dynamicid;
  int? get subadminid => _subadminid;
  int? get societyid => _societyid;
  int? get superadminid => _superadminid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['address'] = _address;
    map['type'] = _type;
    map['iteration'] = _iteration;
    map['dynamicid'] = _dynamicid;
    map['subadminid'] = _subadminid;
    map['societyid'] = _societyid;
    map['superadminid'] = _superadminid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// address : "phase"
/// iteration : "1"
/// dynamicid : 1
/// subadminid : 2
/// societyid : 1
/// superadminid : 1
/// created_at : "2023-03-14T08:16:11.000000Z"
/// updated_at : "2023-03-14T08:16:11.000000Z"

class Phase {
  Phase({
      int? id,
      String? address, 
      String? iteration, 
      int? dynamicid,
      int? subadminid,
      int? societyid,
      int? superadminid,
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _address = address;
    _iteration = iteration;
    _dynamicid = dynamicid;
    _subadminid = subadminid;
    _societyid = societyid;
    _superadminid = superadminid;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Phase.fromJson(dynamic json) {
    _id = json['id'];
    _address = json['address'];
    _iteration = json['iteration'];
    _dynamicid = json['dynamicid'];
    _subadminid = json['subadminid'];
    _societyid = json['societyid'];
    _superadminid = json['superadminid'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  String? _address;
  String? _iteration;
  int? _dynamicid;
  int? _subadminid;
  int? _societyid;
  int? _superadminid;
  String? _createdAt;
  String? _updatedAt;
Phase copyWith({  int? id,
  String? address,
  String? iteration,
  int? dynamicid,
  int? subadminid,
  int? societyid,
  int? superadminid,
  String? createdAt,
  String? updatedAt,
}) => Phase(  id: id ?? _id,
  address: address ?? _address,
  iteration: iteration ?? _iteration,
  dynamicid: dynamicid ?? _dynamicid,
  subadminid: subadminid ?? _subadminid,
  societyid: societyid ?? _societyid,
  superadminid: superadminid ?? _superadminid,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get address => _address;
  String? get iteration => _iteration;
  int? get dynamicid => _dynamicid;
  int? get subadminid => _subadminid;
  int? get societyid => _societyid;
  int? get superadminid => _superadminid;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['address'] = _address;
    map['iteration'] = _iteration;
    map['dynamicid'] = _dynamicid;
    map['subadminid'] = _subadminid;
    map['societyid'] = _societyid;
    map['superadminid'] = _superadminid;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// country : "Pakistan"
/// state : "Punjab"
/// city : "Rawat"
/// area : "T-Chowk"
/// type : "society"
/// name : "Rawat Enclave"
/// address : "Kallar Syedian Road"
/// superadminid : 1
/// structuretype : 3
/// created_at : "2023-03-14T06:32:40.000000Z"
/// updated_at : "2023-03-14T06:32:40.000000Z"

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