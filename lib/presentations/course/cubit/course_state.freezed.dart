// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseState _$CourseStateFromJson(Map<String, dynamic> json) {
  return _CourseState.fromJson(json);
}

/// @nodoc
mixin _$CourseState {
  List<CoursesResponse> get courses => throw _privateConstructorUsedError;

  /// Serializes this CourseState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call({List<CoursesResponse> courses});
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CoursesResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseStateImplCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$$CourseStateImplCopyWith(
          _$CourseStateImpl value, $Res Function(_$CourseStateImpl) then) =
      __$$CourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoursesResponse> courses});
}

/// @nodoc
class __$$CourseStateImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateImpl>
    implements _$$CourseStateImplCopyWith<$Res> {
  __$$CourseStateImplCopyWithImpl(
      _$CourseStateImpl _value, $Res Function(_$CourseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$CourseStateImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CoursesResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseStateImpl extends _CourseState {
  _$CourseStateImpl({final List<CoursesResponse> courses = const []})
      : _courses = courses,
        super._();

  factory _$CourseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseStateImplFromJson(json);

  final List<CoursesResponse> _courses;
  @override
  @JsonKey()
  List<CoursesResponse> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseState(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      __$$CourseStateImplCopyWithImpl<_$CourseStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseStateImplToJson(
      this,
    );
  }
}

abstract class _CourseState extends CourseState {
  factory _CourseState({final List<CoursesResponse> courses}) =
      _$CourseStateImpl;
  _CourseState._() : super._();

  factory _CourseState.fromJson(Map<String, dynamic> json) =
      _$CourseStateImpl.fromJson;

  @override
  List<CoursesResponse> get courses;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
