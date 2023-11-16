// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListUsersResponse _$ListUsersResponseFromJson(Map<String, dynamic> json) {
  return _ListUsersResponse.fromJson(json);
}

/// @nodoc
mixin _$ListUsersResponse {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListUsersResponseCopyWith<ListUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUsersResponseCopyWith<$Res> {
  factory $ListUsersResponseCopyWith(
          ListUsersResponse value, $Res Function(ListUsersResponse) then) =
      _$ListUsersResponseCopyWithImpl<$Res, ListUsersResponse>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'data') List<User>? users});
}

/// @nodoc
class _$ListUsersResponseCopyWithImpl<$Res, $Val extends ListUsersResponse>
    implements $ListUsersResponseCopyWith<$Res> {
  _$ListUsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListUsersResponseImplCopyWith<$Res>
    implements $ListUsersResponseCopyWith<$Res> {
  factory _$$ListUsersResponseImplCopyWith(_$ListUsersResponseImpl value,
          $Res Function(_$ListUsersResponseImpl) then) =
      __$$ListUsersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'data') List<User>? users});
}

/// @nodoc
class __$$ListUsersResponseImplCopyWithImpl<$Res>
    extends _$ListUsersResponseCopyWithImpl<$Res, _$ListUsersResponseImpl>
    implements _$$ListUsersResponseImplCopyWith<$Res> {
  __$$ListUsersResponseImplCopyWithImpl(_$ListUsersResponseImpl _value,
      $Res Function(_$ListUsersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? users = freezed,
  }) {
    return _then(_$ListUsersResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListUsersResponseImpl implements _ListUsersResponse {
  _$ListUsersResponseImpl(
      {required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      required this.total,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'data') final List<User>? users})
      : _users = users;

  factory _$ListUsersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListUsersResponseImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  final int total;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<User>? _users;
  @override
  @JsonKey(name: 'data')
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListUsersResponse(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListUsersResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListUsersResponseImplCopyWith<_$ListUsersResponseImpl> get copyWith =>
      __$$ListUsersResponseImplCopyWithImpl<_$ListUsersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListUsersResponseImplToJson(
      this,
    );
  }
}

abstract class _ListUsersResponse implements ListUsersResponse {
  factory _ListUsersResponse(
          {required final int page,
          @JsonKey(name: 'per_page') required final int perPage,
          required final int total,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'data') final List<User>? users}) =
      _$ListUsersResponseImpl;

  factory _ListUsersResponse.fromJson(Map<String, dynamic> json) =
      _$ListUsersResponseImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  int get total;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'data')
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$ListUsersResponseImplCopyWith<_$ListUsersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
