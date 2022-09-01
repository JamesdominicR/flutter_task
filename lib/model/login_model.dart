import 'package:meta/meta.dart';
import 'dart:convert';

LoginUser loginUserFromJson(String str) => LoginUser.fromJson(json.decode(str));

String loginUserToJson(LoginUser data) => json.encode(data.toJson());

class LoginUser {
  LoginUser({
    required this.status,
    required this.userData,
    required this.msg,
  });

  bool status;
  List<UserDatum> userData;
  String msg;

  factory LoginUser.fromJson(Map<String, dynamic> json) => LoginUser(
        status: json["status"],
        userData: List<UserDatum>.from(
            json["user_data"].map((x) => UserDatum.fromJson(x))),
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "user_data": List<dynamic>.from(userData.map((x) => x.toJson())),
        "msg": msg,
      };
}

class UserDatum {
  UserDatum({
    required this.userId,
    required this.userFirstname,
    required this.userLastname,
    required this.userEmail,
    required this.userPhone,
    required this.userPassword,
    required this.userGender,
    required this.userAddress1,
    required this.userAddress2,
    required this.userCity,
    required this.userState,
    required this.userCountry,
    required this.userZipcode,
    required this.userPhoneverified,
    required this.userEmailverified,
    required this.userProfilepicture,
    required this.userUserslug,
    required this.userStatus,
    required this.userUsertype,
    required this.userLastlogin,
    required this.userCreatedat,
  });

  String userId;
  dynamic userFirstname;
  String userLastname;
  String userEmail;
  String userPhone;
  String userPassword;
  dynamic userGender;
  dynamic userAddress1;
  dynamic userAddress2;
  dynamic userCity;
  dynamic userState;
  dynamic userCountry;
  String userZipcode;
  dynamic userPhoneverified;
  dynamic userEmailverified;
  dynamic userProfilepicture;
  dynamic userUserslug;
  dynamic userStatus;
  dynamic userUsertype;
  dynamic userLastlogin;
  dynamic userCreatedat;

  factory UserDatum.fromJson(Map<String, dynamic> json) => UserDatum(
        userId: json["user_id"],
        userFirstname: json["user_firstname"],
        userLastname: json["user_lastname"],
        userEmail: json["user_email"],
        userPhone: json["user_phone"],
        userPassword: json["user_password"],
        userGender: json["user_gender"],
        userAddress1: json["user_address1"],
        userAddress2: json["user_address2"],
        userCity: json["user_city"],
        userState: json["user_state"],
        userCountry: json["user_country"],
        userZipcode: json["user_zipcode"],
        userPhoneverified: json["user_phoneverified"],
        userEmailverified: json["user_emailverified"],
        userProfilepicture: json["user_profilepicture"],
        userUserslug: json["user_userslug"],
        userStatus: json["user_status"],
        userUsertype: json["user_usertype"],
        userLastlogin: json["user_lastlogin"],
        userCreatedat: json["user_createdat"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_firstname": userFirstname,
        "user_lastname": userLastname,
        "user_email": userEmail,
        "user_phone": userPhone,
        "user_password": userPassword,
        "user_gender": userGender,
        "user_address1": userAddress1,
        "user_address2": userAddress2,
        "user_city": userCity,
        "user_state": userState,
        "user_country": userCountry,
        "user_zipcode": userZipcode,
        "user_phoneverified": userPhoneverified,
        "user_emailverified": userEmailverified,
        "user_profilepicture": userProfilepicture,
        "user_userslug": userUserslug,
        "user_status": userStatus,
        "user_usertype": userUsertype,
        "user_lastlogin": userLastlogin,
        "user_createdat": userCreatedat,
      };
}
