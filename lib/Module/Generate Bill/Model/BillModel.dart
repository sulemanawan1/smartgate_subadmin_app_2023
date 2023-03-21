/// success : true
/// data : [{"id":1,"charges":5000,"chargesafterduedate":5250,"appcharges":100,"tax":750,"balance":5000,"subadminid":2,"residentid":4,"propertyid":2,"measurementid":1,"duedate":"2023-03-20","billstartdate":"2023-02-01","billenddate":"2023-02-28","month":"February 2023","status":0,"created_at":"2023-03-13T10:44:00.000000Z","updated_at":"2023-03-13T10:44:00.000000Z","user":[{"id":4,"firstname":"rimsha","lastname":"sohai","cnic":"37905","address":"House no 2","mobileno":"0321","password":"$2y$10$FhqO1ATAYKwIryTewivtpeGdrs.em0yc3HRO1iEdwb4Jh/ojgsay2","roleid":3,"isverfied":1,"rolename":"resident","image":"1678703649.jpg","fcmtoken":"fd2X6CQ1RnOjnbeKXQo0Wj:APA91bGYJSdZXRh97FsDA09S8e13yF_l7ozJbc52l0_5zUPs6cNbTjWtNz0rQsSMvbRUNDxfsNOo54ff0VrEnzZp6e-gGqBcbFku6TF66qZ3wk-tEngArM9vCq6TZxC5WTf-pLJbZrJd","created_at":"2023-03-13T10:34:09.000000Z","updated_at":"2023-03-13T10:35:08.000000Z"}],"resident":[{"id":2,"residentid":4,"subadminid":2,"country":"🇵🇰    Pakistan","state":"null","city":"null","houseaddress":"House no 2","vechileno":"","residenttype":"Owner","propertytype":"house","committeemember":0,"status":1,"created_at":"2023-03-13T10:34:52.000000Z","updated_at":"2023-03-13T10:35:08.000000Z"}],"measurement":[{"id":1,"subadminid":2,"type":"house","unit":"marla","charges":5000,"chargesafterduedate":5250,"appcharges":100,"tax":750,"area":2,"bedrooms":2,"status":0,"created_at":"2023-03-13T10:27:15.000000Z","updated_at":"2023-03-13T10:27:15.000000Z"}],"property":[{"id":2,"sid":1,"address":"House no 2","typeid":0,"type":"house","created_at":"2023-03-13T10:25:49.000000Z","updated_at":"2023-03-13T10:25:49.000000Z"}]}]

class BillModel {
  BillModel({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  BillModel.fromJson(dynamic json) {
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
BillModel copyWith({  bool? success,
  List<Data>? data,
}) => BillModel(  success: success ?? _success,
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

/// id : 1
/// charges : 5000
/// chargesafterduedate : 5250
/// appcharges : 100
/// tax : 750
/// balance : 5000
/// subadminid : 2
/// residentid : 4
/// propertyid : 2
/// measurementid : 1
/// duedate : "2023-03-20"
/// billstartdate : "2023-02-01"
/// billenddate : "2023-02-28"
/// month : "February 2023"
/// status : 0
/// created_at : "2023-03-13T10:44:00.000000Z"
/// updated_at : "2023-03-13T10:44:00.000000Z"
/// user : [{"id":4,"firstname":"rimsha","lastname":"sohai","cnic":"37905","address":"House no 2","mobileno":"0321","password":"$2y$10$FhqO1ATAYKwIryTewivtpeGdrs.em0yc3HRO1iEdwb4Jh/ojgsay2","roleid":3,"isverfied":1,"rolename":"resident","image":"1678703649.jpg","fcmtoken":"fd2X6CQ1RnOjnbeKXQo0Wj:APA91bGYJSdZXRh97FsDA09S8e13yF_l7ozJbc52l0_5zUPs6cNbTjWtNz0rQsSMvbRUNDxfsNOo54ff0VrEnzZp6e-gGqBcbFku6TF66qZ3wk-tEngArM9vCq6TZxC5WTf-pLJbZrJd","created_at":"2023-03-13T10:34:09.000000Z","updated_at":"2023-03-13T10:35:08.000000Z"}]
/// resident : [{"id":2,"residentid":4,"subadminid":2,"country":"🇵🇰    Pakistan","state":"null","city":"null","houseaddress":"House no 2","vechileno":"","residenttype":"Owner","propertytype":"house","committeemember":0,"status":1,"created_at":"2023-03-13T10:34:52.000000Z","updated_at":"2023-03-13T10:35:08.000000Z"}]
/// measurement : [{"id":1,"subadminid":2,"type":"house","unit":"marla","charges":5000,"chargesafterduedate":5250,"appcharges":100,"tax":750,"area":2,"bedrooms":2,"status":0,"created_at":"2023-03-13T10:27:15.000000Z","updated_at":"2023-03-13T10:27:15.000000Z"}]
/// property : [{"id":2,"sid":1,"address":"House no 2","typeid":0,"type":"house","created_at":"2023-03-13T10:25:49.000000Z","updated_at":"2023-03-13T10:25:49.000000Z"}]

class Data {
  Data({
      num? id, 
      num? charges, 
      num? chargesafterduedate, 
      num? appcharges, 
      num? tax, 
      num? balance, 
      num? subadminid, 
      num? residentid, 
      num? propertyid, 
      num? measurementid, 
      String? duedate, 
      String? billstartdate, 
      String? billenddate, 
      String? month, 
      num? status, 
      String? createdAt, 
      String? updatedAt, 
      List<User>? user, 
      List<Resident>? resident, 
      List<Measurement>? measurement, 
      List<Property>? property,}){
    _id = id;
    _charges = charges;
    _chargesafterduedate = chargesafterduedate;
    _appcharges = appcharges;
    _tax = tax;
    _balance = balance;
    _subadminid = subadminid;
    _residentid = residentid;
    _propertyid = propertyid;
    _measurementid = measurementid;
    _duedate = duedate;
    _billstartdate = billstartdate;
    _billenddate = billenddate;
    _month = month;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
    _resident = resident;
    _measurement = measurement;
    _property = property;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _charges = json['charges'];
    _chargesafterduedate = json['chargesafterduedate'];
    _appcharges = json['appcharges'];
    _tax = json['tax'];
    _balance = json['balance'];
    _subadminid = json['subadminid'];
    _residentid = json['residentid'];
    _propertyid = json['propertyid'];
    _measurementid = json['measurementid'];
    _duedate = json['duedate'];
    _billstartdate = json['billstartdate'];
    _billenddate = json['billenddate'];
    _month = json['month'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['user'] != null) {
      _user = [];
      json['user'].forEach((v) {
        _user?.add(User.fromJson(v));
      });
    }
    if (json['resident'] != null) {
      _resident = [];
      json['resident'].forEach((v) {
        _resident?.add(Resident.fromJson(v));
      });
    }
    if (json['measurement'] != null) {
      _measurement = [];
      json['measurement'].forEach((v) {
        _measurement?.add(Measurement.fromJson(v));
      });
    }
    if (json['property'] != null) {
      _property = [];
      json['property'].forEach((v) {
        _property?.add(Property.fromJson(v));
      });
    }
  }
  num? _id;
  num? _charges;
  num? _chargesafterduedate;
  num? _appcharges;
  num? _tax;
  num? _balance;
  num? _subadminid;
  num? _residentid;
  num? _propertyid;
  num? _measurementid;
  String? _duedate;
  String? _billstartdate;
  String? _billenddate;
  String? _month;
  num? _status;
  String? _createdAt;
  String? _updatedAt;
  List<User>? _user;
  List<Resident>? _resident;
  List<Measurement>? _measurement;
  List<Property>? _property;
Data copyWith({  num? id,
  num? charges,
  num? chargesafterduedate,
  num? appcharges,
  num? tax,
  num? balance,
  num? subadminid,
  num? residentid,
  num? propertyid,
  num? measurementid,
  String? duedate,
  String? billstartdate,
  String? billenddate,
  String? month,
  num? status,
  String? createdAt,
  String? updatedAt,
  List<User>? user,
  List<Resident>? resident,
  List<Measurement>? measurement,
  List<Property>? property,
}) => Data(  id: id ?? _id,
  charges: charges ?? _charges,
  chargesafterduedate: chargesafterduedate ?? _chargesafterduedate,
  appcharges: appcharges ?? _appcharges,
  tax: tax ?? _tax,
  balance: balance ?? _balance,
  subadminid: subadminid ?? _subadminid,
  residentid: residentid ?? _residentid,
  propertyid: propertyid ?? _propertyid,
  measurementid: measurementid ?? _measurementid,
  duedate: duedate ?? _duedate,
  billstartdate: billstartdate ?? _billstartdate,
  billenddate: billenddate ?? _billenddate,
  month: month ?? _month,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  user: user ?? _user,
  resident: resident ?? _resident,
  measurement: measurement ?? _measurement,
  property: property ?? _property,
);
  num? get id => _id;
  num? get charges => _charges;
  num? get chargesafterduedate => _chargesafterduedate;
  num? get appcharges => _appcharges;
  num? get tax => _tax;
  num? get balance => _balance;
  num? get subadminid => _subadminid;
  num? get residentid => _residentid;
  num? get propertyid => _propertyid;
  num? get measurementid => _measurementid;
  String? get duedate => _duedate;
  String? get billstartdate => _billstartdate;
  String? get billenddate => _billenddate;
  String? get month => _month;
  num? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<User>? get user => _user;
  List<Resident>? get resident => _resident;
  List<Measurement>? get measurement => _measurement;
  List<Property>? get property => _property;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['charges'] = _charges;
    map['chargesafterduedate'] = _chargesafterduedate;
    map['appcharges'] = _appcharges;
    map['tax'] = _tax;
    map['balance'] = _balance;
    map['subadminid'] = _subadminid;
    map['residentid'] = _residentid;
    map['propertyid'] = _propertyid;
    map['measurementid'] = _measurementid;
    map['duedate'] = _duedate;
    map['billstartdate'] = _billstartdate;
    map['billenddate'] = _billenddate;
    map['month'] = _month;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.map((v) => v.toJson()).toList();
    }
    if (_resident != null) {
      map['resident'] = _resident?.map((v) => v.toJson()).toList();
    }
    if (_measurement != null) {
      map['measurement'] = _measurement?.map((v) => v.toJson()).toList();
    }
    if (_property != null) {
      map['property'] = _property?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// sid : 1
/// address : "House no 2"
/// typeid : 0
/// type : "house"
/// created_at : "2023-03-13T10:25:49.000000Z"
/// updated_at : "2023-03-13T10:25:49.000000Z"

class Property {
  Property({
      num? id, 
      num? sid, 
      String? address, 
      num? typeid, 
      String? type, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _sid = sid;
    _address = address;
    _typeid = typeid;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Property.fromJson(dynamic json) {
    _id = json['id'];
    _sid = json['sid'];
    _address = json['address'];
    _typeid = json['typeid'];
    _type = json['type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _sid;
  String? _address;
  num? _typeid;
  String? _type;
  String? _createdAt;
  String? _updatedAt;
Property copyWith({  num? id,
  num? sid,
  String? address,
  num? typeid,
  String? type,
  String? createdAt,
  String? updatedAt,
}) => Property(  id: id ?? _id,
  sid: sid ?? _sid,
  address: address ?? _address,
  typeid: typeid ?? _typeid,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get sid => _sid;
  String? get address => _address;
  num? get typeid => _typeid;
  String? get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sid'] = _sid;
    map['address'] = _address;
    map['typeid'] = _typeid;
    map['type'] = _type;
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
/// area : 2
/// bedrooms : 2
/// status : 0
/// created_at : "2023-03-13T10:27:15.000000Z"
/// updated_at : "2023-03-13T10:27:15.000000Z"

class Measurement {
  Measurement({
      num? id, 
      num? subadminid, 
      String? type, 
      String? unit, 
      num? charges, 
      num? chargesafterduedate, 
      num? appcharges, 
      num? tax, 
      num? area, 
      num? bedrooms, 
      num? status, 
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
  num? _id;
  num? _subadminid;
  String? _type;
  String? _unit;
  num? _charges;
  num? _chargesafterduedate;
  num? _appcharges;
  num? _tax;
  num? _area;
  num? _bedrooms;
  num? _status;
  String? _createdAt;
  String? _updatedAt;
Measurement copyWith({  num? id,
  num? subadminid,
  String? type,
  String? unit,
  num? charges,
  num? chargesafterduedate,
  num? appcharges,
  num? tax,
  num? area,
  num? bedrooms,
  num? status,
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
  num? get id => _id;
  num? get subadminid => _subadminid;
  String? get type => _type;
  String? get unit => _unit;
  num? get charges => _charges;
  num? get chargesafterduedate => _chargesafterduedate;
  num? get appcharges => _appcharges;
  num? get tax => _tax;
  num? get area => _area;
  num? get bedrooms => _bedrooms;
  num? get status => _status;
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

/// id : 2
/// residentid : 4
/// subadminid : 2
/// country : "🇵🇰    Pakistan"
/// state : "null"
/// city : "null"
/// houseaddress : "House no 2"
/// vechileno : ""
/// residenttype : "Owner"
/// propertytype : "house"
/// committeemember : 0
/// status : 1
/// created_at : "2023-03-13T10:34:52.000000Z"
/// updated_at : "2023-03-13T10:35:08.000000Z"

class Resident {
  Resident({
      num? id, 
      num? residentid, 
      num? subadminid, 
      String? country, 
      String? state, 
      String? city, 
      String? houseaddress, 
      String? vechileno, 
      String? residenttype, 
      String? propertytype, 
      num? committeemember, 
      num? status, 
      String? createdAt, 
      String? updatedAt,}){
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
}

  Resident.fromJson(dynamic json) {
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
  }
  num? _id;
  num? _residentid;
  num? _subadminid;
  String? _country;
  String? _state;
  String? _city;
  String? _houseaddress;
  String? _vechileno;
  String? _residenttype;
  String? _propertytype;
  num? _committeemember;
  num? _status;
  String? _createdAt;
  String? _updatedAt;
Resident copyWith({  num? id,
  num? residentid,
  num? subadminid,
  String? country,
  String? state,
  String? city,
  String? houseaddress,
  String? vechileno,
  String? residenttype,
  String? propertytype,
  num? committeemember,
  num? status,
  String? createdAt,
  String? updatedAt,
}) => Resident(  id: id ?? _id,
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
);
  num? get id => _id;
  num? get residentid => _residentid;
  num? get subadminid => _subadminid;
  String? get country => _country;
  String? get state => _state;
  String? get city => _city;
  String? get houseaddress => _houseaddress;
  String? get vechileno => _vechileno;
  String? get residenttype => _residenttype;
  String? get propertytype => _propertytype;
  num? get committeemember => _committeemember;
  num? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

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
    return map;
  }

}

/// id : 4
/// firstname : "rimsha"
/// lastname : "sohai"
/// cnic : "37905"
/// address : "House no 2"
/// mobileno : "0321"
/// password : "$2y$10$FhqO1ATAYKwIryTewivtpeGdrs.em0yc3HRO1iEdwb4Jh/ojgsay2"
/// roleid : 3
/// isverfied : 1
/// rolename : "resident"
/// image : "1678703649.jpg"
/// fcmtoken : "fd2X6CQ1RnOjnbeKXQo0Wj:APA91bGYJSdZXRh97FsDA09S8e13yF_l7ozJbc52l0_5zUPs6cNbTjWtNz0rQsSMvbRUNDxfsNOo54ff0VrEnzZp6e-gGqBcbFku6TF66qZ3wk-tEngArM9vCq6TZxC5WTf-pLJbZrJd"
/// created_at : "2023-03-13T10:34:09.000000Z"
/// updated_at : "2023-03-13T10:35:08.000000Z"

class User {
  User({
      num? id, 
      String? firstname, 
      String? lastname, 
      String? cnic, 
      String? address, 
      String? mobileno, 
      String? password, 
      num? roleid, 
      num? isverfied, 
      String? rolename, 
      String? image, 
      String? fcmtoken, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _firstname = firstname;
    _lastname = lastname;
    _cnic = cnic;
    _address = address;
    _mobileno = mobileno;
    _password = password;
    _roleid = roleid;
    _isverfied = isverfied;
    _rolename = rolename;
    _image = image;
    _fcmtoken = fcmtoken;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _cnic = json['cnic'];
    _address = json['address'];
    _mobileno = json['mobileno'];
    _password = json['password'];
    _roleid = json['roleid'];
    _isverfied = json['isverfied'];
    _rolename = json['rolename'];
    _image = json['image'];
    _fcmtoken = json['fcmtoken'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _firstname;
  String? _lastname;
  String? _cnic;
  String? _address;
  String? _mobileno;
  String? _password;
  num? _roleid;
  num? _isverfied;
  String? _rolename;
  String? _image;
  String? _fcmtoken;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  num? id,
  String? firstname,
  String? lastname,
  String? cnic,
  String? address,
  String? mobileno,
  String? password,
  num? roleid,
  num? isverfied,
  String? rolename,
  String? image,
  String? fcmtoken,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  firstname: firstname ?? _firstname,
  lastname: lastname ?? _lastname,
  cnic: cnic ?? _cnic,
  address: address ?? _address,
  mobileno: mobileno ?? _mobileno,
  password: password ?? _password,
  roleid: roleid ?? _roleid,
  isverfied: isverfied ?? _isverfied,
  rolename: rolename ?? _rolename,
  image: image ?? _image,
  fcmtoken: fcmtoken ?? _fcmtoken,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get cnic => _cnic;
  String? get address => _address;
  String? get mobileno => _mobileno;
  String? get password => _password;
  num? get roleid => _roleid;
  num? get isverfied => _isverfied;
  String? get rolename => _rolename;
  String? get image => _image;
  String? get fcmtoken => _fcmtoken;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['cnic'] = _cnic;
    map['address'] = _address;
    map['mobileno'] = _mobileno;
    map['password'] = _password;
    map['roleid'] = _roleid;
    map['isverfied'] = _isverfied;
    map['rolename'] = _rolename;
    map['image'] = _image;
    map['fcmtoken'] = _fcmtoken;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}