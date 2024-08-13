import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  UserModel({this.id, this.name, this.email, this.gender, this.status});
  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  /// Connect the generated [_$UserModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}