import 'package:ftm_service_app/structures/state_model.dart';

class UserModel {
  int? userId;
  String? firstName;
  String? lastName;
  int? roleId;
  String? roleName;
  String? phone;
  String? personnelId;
  String? cardId;
  String? token;
  String? deviceId;
  StateModel? state;
  String? city;
  int? areaLimit;
  String? avatar;
  String? otpValue;
  String? status;
  String? error;

  UserModel(
      {this.userId,
      this.firstName,
      this.lastName,
      this.roleId,
      this.roleName,
      this.phone,
      this.personnelId,
      this.cardId,
      this.token,
      this.deviceId,
      this.state,
      this.city,
      this.areaLimit,
      this.avatar,
      this.otpValue,
      this.status,
      this.error});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        userId: json['message']['id'],
        firstName: json['message']['first_name'].toString(),
        lastName: json['message']['last_name'],
        roleId: json['message']['role']['id'],
        roleName: json['message']['role']['name_en'],
        phone: json['message']['phone'],
        personnelId: json['message']['id_personnel'],
        cardId: json['message']['id_card'],
        token: json['message']['token'],
        deviceId: json['message']['device_id'],
        state: (StateModel.fromJson(json['message']['state'])),
        city: json['message']['city']['name'],
        areaLimit: json['message']['area_limit'],
        avatar: json['message']['avatar'],
        otpValue: json['message']['otp_value'],
        status: json['message']['status']['name'],
        error: json['err']);
  }


  String getRole() {
    String _role = "";

    if (roleName == "Admin") {
      _role = "سرپرست";
    } else if (roleName == "operator") {
      _role = "اپراتور";
    }
    return _role;
  }
}
