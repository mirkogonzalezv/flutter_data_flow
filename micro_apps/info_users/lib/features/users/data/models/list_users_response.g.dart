// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListUsersResponseImpl _$$ListUsersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListUsersResponseImpl(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      users: (json['data'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListUsersResponseImplToJson(
        _$ListUsersResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.users,
    };
