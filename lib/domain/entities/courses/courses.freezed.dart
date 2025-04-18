// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoursesResponse _$CoursesResponseFromJson(Map<String, dynamic> json) {
  return _CoursesResponse.fromJson(json);
}

/// @nodoc
mixin _$CoursesResponse {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  dynamic get author => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  List<PathCourse>? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this CoursesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoursesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursesResponseCopyWith<CoursesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesResponseCopyWith<$Res> {
  factory $CoursesResponseCopyWith(
          CoursesResponse value, $Res Function(CoursesResponse) then) =
      _$CoursesResponseCopyWithImpl<$Res, CoursesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "author") dynamic author,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "path") List<PathCourse>? path,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$CoursesResponseCopyWithImpl<$Res, $Val extends CoursesResponse>
    implements $CoursesResponseCopyWith<$Res> {
  _$CoursesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? path = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathCourse>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesResponseImplCopyWith<$Res>
    implements $CoursesResponseCopyWith<$Res> {
  factory _$$CoursesResponseImplCopyWith(_$CoursesResponseImpl value,
          $Res Function(_$CoursesResponseImpl) then) =
      __$$CoursesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "author") dynamic author,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "path") List<PathCourse>? path,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$CoursesResponseImplCopyWithImpl<$Res>
    extends _$CoursesResponseCopyWithImpl<$Res, _$CoursesResponseImpl>
    implements _$$CoursesResponseImplCopyWith<$Res> {
  __$$CoursesResponseImplCopyWithImpl(
      _$CoursesResponseImpl _value, $Res Function(_$CoursesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? path = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CoursesResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      path: freezed == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathCourse>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursesResponseImpl implements _CoursesResponse {
  const _$CoursesResponseImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "path") final List<PathCourse>? path,
      @JsonKey(name: "title") this.title})
      : _path = path;

  factory _$CoursesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursesResponseImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "author")
  final dynamic author;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  final List<PathCourse>? _path;
  @override
  @JsonKey(name: "path")
  List<PathCourse>? get path {
    final value = _path;
    if (value == null) return null;
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'CoursesResponse(id: $id, author: $author, category: $category, createdAt: $createdAt, path: $path, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(author),
      category,
      createdAt,
      const DeepCollectionEquality().hash(_path),
      title);

  /// Create a copy of CoursesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesResponseImplCopyWith<_$CoursesResponseImpl> get copyWith =>
      __$$CoursesResponseImplCopyWithImpl<_$CoursesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursesResponseImplToJson(
      this,
    );
  }
}

abstract class _CoursesResponse implements CoursesResponse {
  const factory _CoursesResponse(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "author") final dynamic author,
      @JsonKey(name: "category") final String? category,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "path") final List<PathCourse>? path,
      @JsonKey(name: "title") final String? title}) = _$CoursesResponseImpl;

  factory _CoursesResponse.fromJson(Map<String, dynamic> json) =
      _$CoursesResponseImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "author")
  dynamic get author;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "path")
  List<PathCourse>? get path;
  @override
  @JsonKey(name: "title")
  String? get title;

  /// Create a copy of CoursesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursesResponseImplCopyWith<_$CoursesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PathCourse _$PathCourseFromJson(Map<String, dynamic> json) {
  return _Path.fromJson(json);
}

/// @nodoc
mixin _$PathCourse {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PathCourse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PathCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathCourseCopyWith<PathCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathCourseCopyWith<$Res> {
  factory $PathCourseCopyWith(
          PathCourse value, $Res Function(PathCourse) then) =
      _$PathCourseCopyWithImpl<$Res, PathCourse>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$PathCourseCopyWithImpl<$Res, $Val extends PathCourse>
    implements $PathCourseCopyWith<$Res> {
  _$PathCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PathCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PathImplCopyWith<$Res> implements $PathCourseCopyWith<$Res> {
  factory _$$PathImplCopyWith(
          _$PathImpl value, $Res Function(_$PathImpl) then) =
      __$$PathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$PathImplCopyWithImpl<$Res>
    extends _$PathCourseCopyWithImpl<$Res, _$PathImpl>
    implements _$$PathImplCopyWith<$Res> {
  __$$PathImplCopyWithImpl(_$PathImpl _value, $Res Function(_$PathImpl) _then)
      : super(_value, _then);

  /// Create a copy of PathCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PathImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathImpl implements _Path {
  const _$PathImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "url") this.url});

  factory _$PathImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'PathCourse(fileName: $fileName, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  /// Create a copy of PathCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      __$$PathImplCopyWithImpl<_$PathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathImplToJson(
      this,
    );
  }
}

abstract class _Path implements PathCourse {
  const factory _Path(
      {@JsonKey(name: "fileName") final String? fileName,
      @JsonKey(name: "url") final String? url}) = _$PathImpl;

  factory _Path.fromJson(Map<String, dynamic> json) = _$PathImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of PathCourse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
