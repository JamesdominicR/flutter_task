import 'dart:convert';

RegisterFailedUser registerFailedUserFromJson(String str) =>
    RegisterFailedUser.fromJson(json.decode(str));

String registerFailedUserToJson(RegisterFailedUser data) =>
    json.encode(data.toJson());

class RegisterFailedUser {
  RegisterFailedUser({
    required this.status,
    required this.msg,
    required this.registeredId,
  });

  bool status;
  String msg;
  String registeredId;

  factory RegisterFailedUser.fromJson(Map<String, dynamic> json) =>
      RegisterFailedUser(
        status: json["status"],
        msg: json["msg"],
        registeredId: json["registeredID"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "registeredID": registeredId,
      };
}
