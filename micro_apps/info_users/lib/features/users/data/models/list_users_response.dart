// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';

part 'list_users_response.freezed.dart';
part 'list_users_response.g.dart';

@freezed
class ListUsersResponse with _$ListUsersResponse {
  factory ListUsersResponse({
    required int id,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'data') List<User>? users,
  }) = _ListUsersResponse;

  factory ListUsersResponse.fromJson(Map<String, dynamic> json) => _$ListUsersResponseFromJson(json);
}
