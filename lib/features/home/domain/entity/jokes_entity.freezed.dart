// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jokes_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokesEntity {
  List<JokeEntity> get jokes => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokesEntityCopyWith<JokesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokesEntityCopyWith<$Res> {
  factory $JokesEntityCopyWith(
          JokesEntity value, $Res Function(JokesEntity) then) =
      _$JokesEntityCopyWithImpl<$Res, JokesEntity>;
  @useResult
  $Res call({List<JokeEntity> jokes, int? id});
}

/// @nodoc
class _$JokesEntityCopyWithImpl<$Res, $Val extends JokesEntity>
    implements $JokesEntityCopyWith<$Res> {
  _$JokesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      jokes: null == jokes
          ? _value.jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<JokeEntity>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokesEntityCopyWith<$Res>
    implements $JokesEntityCopyWith<$Res> {
  factory _$$_JokesEntityCopyWith(
          _$_JokesEntity value, $Res Function(_$_JokesEntity) then) =
      __$$_JokesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JokeEntity> jokes, int? id});
}

/// @nodoc
class __$$_JokesEntityCopyWithImpl<$Res>
    extends _$JokesEntityCopyWithImpl<$Res, _$_JokesEntity>
    implements _$$_JokesEntityCopyWith<$Res> {
  __$$_JokesEntityCopyWithImpl(
      _$_JokesEntity _value, $Res Function(_$_JokesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
    Object? id = freezed,
  }) {
    return _then(_$_JokesEntity(
      jokes: null == jokes
          ? _value._jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<JokeEntity>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_JokesEntity implements _JokesEntity {
  const _$_JokesEntity(
      {final List<JokeEntity> jokes = const <JokeEntity>[], this.id})
      : _jokes = jokes;

  final List<JokeEntity> _jokes;
  @override
  @JsonKey()
  List<JokeEntity> get jokes {
    if (_jokes is EqualUnmodifiableListView) return _jokes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokes);
  }

  @override
  final int? id;

  @override
  String toString() {
    return 'JokesEntity(jokes: $jokes, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokesEntity &&
            const DeepCollectionEquality().equals(other._jokes, _jokes) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jokes), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokesEntityCopyWith<_$_JokesEntity> get copyWith =>
      __$$_JokesEntityCopyWithImpl<_$_JokesEntity>(this, _$identity);
}

abstract class _JokesEntity implements JokesEntity {
  const factory _JokesEntity({final List<JokeEntity> jokes, final int? id}) =
      _$_JokesEntity;

  @override
  List<JokeEntity> get jokes;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_JokesEntityCopyWith<_$_JokesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
