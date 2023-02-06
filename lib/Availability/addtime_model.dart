class AddTimeModel {
  int? code;
  String? message;

  AddTimeModel({this.code, this.message});

  factory AddTimeModel.fromJson(Map<String, dynamic> json) => AddTimeModel(
    code: json["code"],
    message: json["message"],
  );
}
