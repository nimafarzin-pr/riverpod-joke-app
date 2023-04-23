// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeEntity {
  String? get joke => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeEntityCopyWith<JokeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeEntityCopyWith<$Res> {
  factory $JokeEntityCopyWith(
          JokeEntity value, $Res Function(JokeEntity) then) =
      _$JokeEntityCopyWithImpl<$Res, JokeEntity>;
  @useResult
  $Res call({String? joke, int? id, bool isSelected});
}

/// @nodoc
class _$JokeEntityCopyWithImpl<$Res, $Val extends JokeEntity>
    implements $JokeEntityCopyWith<$Res> {
  _$JokeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = freezed,
    Object? id = freezed,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeEntityCopyWith<$Res>
    implements $JokeEntityCopyWith<$Res> {
  factory _$$_JokeEntityCopyWith(
          _$_JokeEntity value, $Res Function(_$_JokeEntity) then) =
      __$$_JokeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? joke, int? id, bool isSelected});
}

/// @nodoc
class __$$_JokeEntityCopyWithImpl<$Res>
    extends _$JokeEntityCopyWithImpl<$Res, _$_JokeEntity>
    implements _$$_JokeEntityCopyWith<$Res> {
  __$$_JokeEntityCopyWithImpl(
      _$_JokeEntity _value, $Res Function(_$_JokeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = freezed,
    Object? id = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$_JokeEntity(
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_JokeEntity implements _JokeEntity {
  const _$_JokeEntity({this.joke, this.id, this.isSelected = false});

  @override
  final String? joke;
  @override
  final int? id;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'JokeEntity(joke: $joke, id: $id, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeEntity &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joke, id, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeEntityCopyWith<_$_JokeEntity> get copyWith =>
      __$$_JokeEntityCopyWithImpl<_$_JokeEntity>(this, _$identity);
}

abstract class _JokeEntity implements JokeEntity {
  const factory _JokeEntity(
      {final String? joke,
      final int? id,
      final bool isSelected}) = _$_JokeEntity;

  @override
  String? get joke;
  @override
  int? get id;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_JokeEntityCopyWith<_$_JokeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
