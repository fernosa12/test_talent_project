// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailAudio _$DetailAudioFromJson(Map<String, dynamic> json) {
  return _DetailAudio.fromJson(json);
}

/// @nodoc
mixin _$DetailAudio {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "artist")
  String? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "isPremium")
  String? get isPremium => throw _privateConstructorUsedError;
  @JsonKey(name: "languange")
  String? get languange => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  List<PathDetailAudio>? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  List<ThumbnailDetailAudio>? get thumbnail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  dynamic get time => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this DetailAudio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailAudioCopyWith<DetailAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAudioCopyWith<$Res> {
  factory $DetailAudioCopyWith(
          DetailAudio value, $Res Function(DetailAudio) then) =
      _$DetailAudioCopyWithImpl<$Res, DetailAudio>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "artist") String? artist,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isPremium") String? isPremium,
      @JsonKey(name: "languange") String? languange,
      @JsonKey(name: "path") List<PathDetailAudio>? path,
      @JsonKey(name: "thumbnail") List<ThumbnailDetailAudio>? thumbnail,
      @JsonKey(name: "time") dynamic time,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$DetailAudioCopyWithImpl<$Res, $Val extends DetailAudio>
    implements $DetailAudioCopyWith<$Res> {
  _$DetailAudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artist = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? isPremium = freezed,
    Object? languange = freezed,
    Object? path = freezed,
    Object? thumbnail = freezed,
    Object? time = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as String?,
      languange: freezed == languange
          ? _value.languange
          : languange // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathDetailAudio>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<ThumbnailDetailAudio>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailAudioImplCopyWith<$Res>
    implements $DetailAudioCopyWith<$Res> {
  factory _$$DetailAudioImplCopyWith(
          _$DetailAudioImpl value, $Res Function(_$DetailAudioImpl) then) =
      __$$DetailAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "artist") String? artist,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isPremium") String? isPremium,
      @JsonKey(name: "languange") String? languange,
      @JsonKey(name: "path") List<PathDetailAudio>? path,
      @JsonKey(name: "thumbnail") List<ThumbnailDetailAudio>? thumbnail,
      @JsonKey(name: "time") dynamic time,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$DetailAudioImplCopyWithImpl<$Res>
    extends _$DetailAudioCopyWithImpl<$Res, _$DetailAudioImpl>
    implements _$$DetailAudioImplCopyWith<$Res> {
  __$$DetailAudioImplCopyWithImpl(
      _$DetailAudioImpl _value, $Res Function(_$DetailAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? artist = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? isPremium = freezed,
    Object? languange = freezed,
    Object? path = freezed,
    Object? thumbnail = freezed,
    Object? time = freezed,
    Object? title = freezed,
  }) {
    return _then(_$DetailAudioImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as String?,
      languange: freezed == languange
          ? _value.languange
          : languange // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<PathDetailAudio>?,
      thumbnail: freezed == thumbnail
          ? _value._thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<ThumbnailDetailAudio>?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailAudioImpl implements _DetailAudio {
  const _$DetailAudioImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "artist") this.artist,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "isPremium") this.isPremium,
      @JsonKey(name: "languange") this.languange,
      @JsonKey(name: "path") final List<PathDetailAudio>? path,
      @JsonKey(name: "thumbnail") final List<ThumbnailDetailAudio>? thumbnail,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "title") this.title})
      : _path = path,
        _thumbnail = thumbnail;

  factory _$DetailAudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailAudioImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "artist")
  final String? artist;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "isPremium")
  final String? isPremium;
  @override
  @JsonKey(name: "languange")
  final String? languange;
  final List<PathDetailAudio>? _path;
  @override
  @JsonKey(name: "path")
  List<PathDetailAudio>? get path {
    final value = _path;
    if (value == null) return null;
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ThumbnailDetailAudio>? _thumbnail;
  @override
  @JsonKey(name: "thumbnail")
  List<ThumbnailDetailAudio>? get thumbnail {
    final value = _thumbnail;
    if (value == null) return null;
    if (_thumbnail is EqualUnmodifiableListView) return _thumbnail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "time")
  final dynamic time;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'DetailAudio(id: $id, artist: $artist, createdAt: $createdAt, description: $description, isPremium: $isPremium, languange: $languange, path: $path, thumbnail: $thumbnail, time: $time, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailAudioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.languange, languange) ||
                other.languange == languange) &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            const DeepCollectionEquality()
                .equals(other._thumbnail, _thumbnail) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      artist,
      createdAt,
      description,
      isPremium,
      languange,
      const DeepCollectionEquality().hash(_path),
      const DeepCollectionEquality().hash(_thumbnail),
      const DeepCollectionEquality().hash(time),
      title);

  /// Create a copy of DetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailAudioImplCopyWith<_$DetailAudioImpl> get copyWith =>
      __$$DetailAudioImplCopyWithImpl<_$DetailAudioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailAudioImplToJson(
      this,
    );
  }
}

abstract class _DetailAudio implements DetailAudio {
  const factory _DetailAudio(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "artist") final String? artist,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "isPremium") final String? isPremium,
      @JsonKey(name: "languange") final String? languange,
      @JsonKey(name: "path") final List<PathDetailAudio>? path,
      @JsonKey(name: "thumbnail") final List<ThumbnailDetailAudio>? thumbnail,
      @JsonKey(name: "time") final dynamic time,
      @JsonKey(name: "title") final String? title}) = _$DetailAudioImpl;

  factory _DetailAudio.fromJson(Map<String, dynamic> json) =
      _$DetailAudioImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "artist")
  String? get artist;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "isPremium")
  String? get isPremium;
  @override
  @JsonKey(name: "languange")
  String? get languange;
  @override
  @JsonKey(name: "path")
  List<PathDetailAudio>? get path;
  @override
  @JsonKey(name: "thumbnail")
  List<ThumbnailDetailAudio>? get thumbnail;
  @override
  @JsonKey(name: "time")
  dynamic get time;
  @override
  @JsonKey(name: "title")
  String? get title;

  /// Create a copy of DetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailAudioImplCopyWith<_$DetailAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PathDetailAudio _$PathDetailAudioFromJson(Map<String, dynamic> json) {
  return _PathDetailAudio.fromJson(json);
}

/// @nodoc
mixin _$PathDetailAudio {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PathDetailAudio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PathDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathDetailAudioCopyWith<PathDetailAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathDetailAudioCopyWith<$Res> {
  factory $PathDetailAudioCopyWith(
          PathDetailAudio value, $Res Function(PathDetailAudio) then) =
      _$PathDetailAudioCopyWithImpl<$Res, PathDetailAudio>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$PathDetailAudioCopyWithImpl<$Res, $Val extends PathDetailAudio>
    implements $PathDetailAudioCopyWith<$Res> {
  _$PathDetailAudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PathDetailAudio
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
abstract class _$$PathDetailAudioImplCopyWith<$Res>
    implements $PathDetailAudioCopyWith<$Res> {
  factory _$$PathDetailAudioImplCopyWith(_$PathDetailAudioImpl value,
          $Res Function(_$PathDetailAudioImpl) then) =
      __$$PathDetailAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$PathDetailAudioImplCopyWithImpl<$Res>
    extends _$PathDetailAudioCopyWithImpl<$Res, _$PathDetailAudioImpl>
    implements _$$PathDetailAudioImplCopyWith<$Res> {
  __$$PathDetailAudioImplCopyWithImpl(
      _$PathDetailAudioImpl _value, $Res Function(_$PathDetailAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of PathDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PathDetailAudioImpl(
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
class _$PathDetailAudioImpl implements _PathDetailAudio {
  const _$PathDetailAudioImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "url") this.url});

  factory _$PathDetailAudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathDetailAudioImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'PathDetailAudio(fileName: $fileName, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathDetailAudioImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  /// Create a copy of PathDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathDetailAudioImplCopyWith<_$PathDetailAudioImpl> get copyWith =>
      __$$PathDetailAudioImplCopyWithImpl<_$PathDetailAudioImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathDetailAudioImplToJson(
      this,
    );
  }
}

abstract class _PathDetailAudio implements PathDetailAudio {
  const factory _PathDetailAudio(
      {@JsonKey(name: "fileName") final String? fileName,
      @JsonKey(name: "url") final String? url}) = _$PathDetailAudioImpl;

  factory _PathDetailAudio.fromJson(Map<String, dynamic> json) =
      _$PathDetailAudioImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of PathDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathDetailAudioImplCopyWith<_$PathDetailAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThumbnailDetailAudio _$ThumbnailDetailAudioFromJson(Map<String, dynamic> json) {
  return _ThumbnailDetailAudio.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailDetailAudio {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ThumbnailDetailAudio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThumbnailDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThumbnailDetailAudioCopyWith<ThumbnailDetailAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailDetailAudioCopyWith<$Res> {
  factory $ThumbnailDetailAudioCopyWith(ThumbnailDetailAudio value,
          $Res Function(ThumbnailDetailAudio) then) =
      _$ThumbnailDetailAudioCopyWithImpl<$Res, ThumbnailDetailAudio>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ThumbnailDetailAudioCopyWithImpl<$Res,
        $Val extends ThumbnailDetailAudio>
    implements $ThumbnailDetailAudioCopyWith<$Res> {
  _$ThumbnailDetailAudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThumbnailDetailAudio
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
abstract class _$$ThumbnailDetailAudioImplCopyWith<$Res>
    implements $ThumbnailDetailAudioCopyWith<$Res> {
  factory _$$ThumbnailDetailAudioImplCopyWith(_$ThumbnailDetailAudioImpl value,
          $Res Function(_$ThumbnailDetailAudioImpl) then) =
      __$$ThumbnailDetailAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ThumbnailDetailAudioImplCopyWithImpl<$Res>
    extends _$ThumbnailDetailAudioCopyWithImpl<$Res, _$ThumbnailDetailAudioImpl>
    implements _$$ThumbnailDetailAudioImplCopyWith<$Res> {
  __$$ThumbnailDetailAudioImplCopyWithImpl(_$ThumbnailDetailAudioImpl _value,
      $Res Function(_$ThumbnailDetailAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThumbnailDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ThumbnailDetailAudioImpl(
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
class _$ThumbnailDetailAudioImpl implements _ThumbnailDetailAudio {
  const _$ThumbnailDetailAudioImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "url") this.url});

  factory _$ThumbnailDetailAudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailDetailAudioImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'ThumbnailDetailAudio(fileName: $fileName, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailDetailAudioImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, url);

  /// Create a copy of ThumbnailDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailDetailAudioImplCopyWith<_$ThumbnailDetailAudioImpl>
      get copyWith =>
          __$$ThumbnailDetailAudioImplCopyWithImpl<_$ThumbnailDetailAudioImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailDetailAudioImplToJson(
      this,
    );
  }
}

abstract class _ThumbnailDetailAudio implements ThumbnailDetailAudio {
  const factory _ThumbnailDetailAudio(
      {@JsonKey(name: "fileName") final String? fileName,
      @JsonKey(name: "url") final String? url}) = _$ThumbnailDetailAudioImpl;

  factory _ThumbnailDetailAudio.fromJson(Map<String, dynamic> json) =
      _$ThumbnailDetailAudioImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of ThumbnailDetailAudio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThumbnailDetailAudioImplCopyWith<_$ThumbnailDetailAudioImpl>
      get copyWith => throw _privateConstructorUsedError;
}
