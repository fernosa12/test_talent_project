// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioState _$AudioStateFromJson(Map<String, dynamic> json) {
  return _AudioState.fromJson(json);
}

/// @nodoc
mixin _$AudioState {
  DetailAudio? get detailAudio => throw _privateConstructorUsedError;

  /// Serializes this AudioState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res, AudioState>;
  @useResult
  $Res call({DetailAudio? detailAudio});

  $DetailAudioCopyWith<$Res>? get detailAudio;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState>
    implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailAudio = freezed,
  }) {
    return _then(_value.copyWith(
      detailAudio: freezed == detailAudio
          ? _value.detailAudio
          : detailAudio // ignore: cast_nullable_to_non_nullable
              as DetailAudio?,
    ) as $Val);
  }

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailAudioCopyWith<$Res>? get detailAudio {
    if (_value.detailAudio == null) {
      return null;
    }

    return $DetailAudioCopyWith<$Res>(_value.detailAudio!, (value) {
      return _then(_value.copyWith(detailAudio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioStateImplCopyWith<$Res>
    implements $AudioStateCopyWith<$Res> {
  factory _$$AudioStateImplCopyWith(
          _$AudioStateImpl value, $Res Function(_$AudioStateImpl) then) =
      __$$AudioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailAudio? detailAudio});

  @override
  $DetailAudioCopyWith<$Res>? get detailAudio;
}

/// @nodoc
class __$$AudioStateImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioStateImpl>
    implements _$$AudioStateImplCopyWith<$Res> {
  __$$AudioStateImplCopyWithImpl(
      _$AudioStateImpl _value, $Res Function(_$AudioStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailAudio = freezed,
  }) {
    return _then(_$AudioStateImpl(
      detailAudio: freezed == detailAudio
          ? _value.detailAudio
          : detailAudio // ignore: cast_nullable_to_non_nullable
              as DetailAudio?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioStateImpl extends _AudioState {
  _$AudioStateImpl({this.detailAudio}) : super._();

  factory _$AudioStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioStateImplFromJson(json);

  @override
  final DetailAudio? detailAudio;

  @override
  String toString() {
    return 'AudioState(detailAudio: $detailAudio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStateImpl &&
            (identical(other.detailAudio, detailAudio) ||
                other.detailAudio == detailAudio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detailAudio);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      __$$AudioStateImplCopyWithImpl<_$AudioStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioStateImplToJson(
      this,
    );
  }
}

abstract class _AudioState extends AudioState {
  factory _AudioState({final DetailAudio? detailAudio}) = _$AudioStateImpl;
  _AudioState._() : super._();

  factory _AudioState.fromJson(Map<String, dynamic> json) =
      _$AudioStateImpl.fromJson;

  @override
  DetailAudio? get detailAudio;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
