import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'User model.g.dart';

@JsonSerializable()
class User extends DataModel<User> {
  @override
  final int id;
  final String accessToken;

  User({required this.id, required this.accessToken});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

