class SetAvailabilityModel {
  int? code;
  String? message;

  SetAvailabilityModel({this.code, this.message});

  factory SetAvailabilityModel.fromJson(Map<String, dynamic> json) => SetAvailabilityModel(
    code: json["code"],
    message: json["message"],
  );
}
