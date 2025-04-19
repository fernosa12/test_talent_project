// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailCourse _$DetailCourseFromJson(Map<String, dynamic> json) {
  return _DetailCourse.fromJson(json);
}

/// @nodoc
mixin _$DetailCourse {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  dynamic get author => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter")
  List<Chapter>? get chapter => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  List<PathDetailCourse>? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this DetailCourse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailCourseCopyWith<DetailCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCourseCopyWith<$Res> {
  factory $DetailCourseCopyWith(
          DetailCourse value, $Res Function(DetailCourse) then) =
      _$DetailCourseCopyWithImpl<$Res, DetailCourse>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "author") dynamic author,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "chapter") List<Chapter>? chapter,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "path") List<PathDetailCourse>? path,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$DetailCourseCopyWithImpl<$Res, $Val extends DetailCourse>
    implements $DetailCourseCopyWith<$Res> {
  _$DetailCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? chapter = freezed,
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
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathDetailCourse>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailCourseImplCopyWith<$Res>
    implements $DetailCourseCopyWith<$Res> {
  factory _$$DetailCourseImplCopyWith(
          _$DetailCourseImpl value, $Res Function(_$DetailCourseImpl) then) =
      __$$DetailCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "author") dynamic author,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "chapter") List<Chapter>? chapter,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "path") List<PathDetailCourse>? path,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$DetailCourseImplCopyWithImpl<$Res>
    extends _$DetailCourseCopyWithImpl<$Res, _$DetailCourseImpl>
    implements _$$DetailCourseImplCopyWith<$Res> {
  __$$DetailCourseImplCopyWithImpl(
      _$DetailCourseImpl _value, $Res Function(_$DetailCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? chapter = freezed,
    Object? createdAt = freezed,
    Object? path = freezed,
    Object? title = freezed,
  }) {
    return _then(_$DetailCourseImpl(
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
      chapter: freezed == chapter
          ? _value._chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      path: freezed == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathDetailCourse>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailCourseImpl implements _DetailCourse {
  const _$DetailCourseImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "chapter") final List<Chapter>? chapter,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "path") final List<PathDetailCourse>? path,
      @JsonKey(name: "title") this.title})
      : _chapter = chapter,
        _path = path;

  factory _$DetailCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailCourseImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "author")
  final dynamic author;
  @override
  @JsonKey(name: "category")
  final String? category;
  final List<Chapter>? _chapter;
  @override
  @JsonKey(name: "chapter")
  List<Chapter>? get chapter {
    final value = _chapter;
    if (value == null) return null;
    if (_chapter is EqualUnmodifiableListView) return _chapter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  final List<PathDetailCourse>? _path;
  @override
  @JsonKey(name: "path")
  List<PathDetailCourse>? get path {
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
    return 'DetailCourse(id: $id, author: $author, category: $category, chapter: $chapter, createdAt: $createdAt, path: $path, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailCourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._chapter, _chapter) &&
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
      const DeepCollectionEquality().hash(_chapter),
      createdAt,
      const DeepCollectionEquality().hash(_path),
      title);

  /// Create a copy of DetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailCourseImplCopyWith<_$DetailCourseImpl> get copyWith =>
      __$$DetailCourseImplCopyWithImpl<_$DetailCourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailCourseImplToJson(
      this,
    );
  }
}

abstract class _DetailCourse implements DetailCourse {
  const factory _DetailCourse(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "author") final dynamic author,
      @JsonKey(name: "category") final String? category,
      @JsonKey(name: "chapter") final List<Chapter>? chapter,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "path") final List<PathDetailCourse>? path,
      @JsonKey(name: "title") final String? title}) = _$DetailCourseImpl;

  factory _DetailCourse.fromJson(Map<String, dynamic> json) =
      _$DetailCourseImpl.fromJson;

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
  @JsonKey(name: "chapter")
  List<Chapter>? get chapter;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "path")
  List<PathDetailCourse>? get path;
  @override
  @JsonKey(name: "title")
  String? get title;

  /// Create a copy of DetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailCourseImplCopyWith<_$DetailCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl(
      {@JsonKey(name: "_id") this.id, @JsonKey(name: "title") this.title});

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'Chapter(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "title") final String? title}) = _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "title")
  String? get title;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PathDetailCourse _$PathDetailCourseFromJson(Map<String, dynamic> json) {
  return _PathDetailCourse.fromJson(json);
}

/// @nodoc
mixin _$PathDetailCourse {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PathDetailCourse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PathDetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathDetailCourseCopyWith<PathDetailCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathDetailCourseCopyWith<$Res> {
  factory $PathDetailCourseCopyWith(
          PathDetailCourse value, $Res Function(PathDetailCourse) then) =
      _$PathDetailCourseCopyWithImpl<$Res, PathDetailCourse>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$PathDetailCourseCopyWithImpl<$Res, $Val extends PathDetailCourse>
    implements $PathDetailCourseCopyWith<$Res> {
  _$PathDetailCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PathDetailCourse
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
abstract class _$$PathDetailCourseImplCopyWith<$Res>
    implements $PathDetailCourseCopyWith<$Res> {
  factory _$$PathDetailCourseImplCopyWith(_$PathDetailCourseImpl value,
          $Res Function(_$PathDetailCourseImpl) then) =
      __$$PathDetailCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$PathDetailCourseImplCopyWithImpl<$Res>
    extends _$PathDetailCourseCopyWithImpl<$Res, _$PathDetailCourseImpl>
    implements _$$PathDetailCourseImplCopyWith<$Res> {
  __$$PathDetailCourseImplCopyWithImpl(_$PathDetailCourseImpl _value,
      $Res Function(_$PathDetailCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PathDetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PathDetailCourseImpl(
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
class _$PathDetailCourseImpl implements _PathDetailCourse {
  const _$PathDetailCourseImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "url") this.url});

  factory _$PathDetailCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathDetailCourseImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'PathDetailCourse(fileName: $fileName, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathDetailCourseImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  /// Create a copy of PathDetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathDetailCourseImplCopyWith<_$PathDetailCourseImpl> get copyWith =>
      __$$PathDetailCourseImplCopyWithImpl<_$PathDetailCourseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathDetailCourseImplToJson(
      this,
    );
  }
}

abstract class _PathDetailCourse implements PathDetailCourse {
  const factory _PathDetailCourse(
      {@JsonKey(name: "fileName") final String? fileName,
      @JsonKey(name: "url") final String? url}) = _$PathDetailCourseImpl;

  factory _PathDetailCourse.fromJson(Map<String, dynamic> json) =
      _$PathDetailCourseImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of PathDetailCourse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathDetailCourseImplCopyWith<_$PathDetailCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
