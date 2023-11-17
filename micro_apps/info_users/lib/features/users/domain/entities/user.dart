// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 1, adapterName: 'UserAdapter')
@freezed
class User with _$User {
  factory User({
    @HiveField(0) required int id,
    @HiveField(1) required String email,
    @HiveField(2) @JsonKey(name: 'first_name') required String firstName,
    @HiveField(3) @JsonKey(name: 'last_name') required String lastName,
    @HiveField(4) required String avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
