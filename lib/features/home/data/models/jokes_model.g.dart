// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jokes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokesModel _$$_JokesModelFromJson(Map<String, dynamic> json) =>
    _$_JokesModel(
      jokes: (json['jokes'] as List<dynamic>?)
              ?.map((e) => JokeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <JokeModel>[],
    );

Map<String, dynamic> _$$_JokesModelToJson(_$_JokesModel instance) =>
    <String, dynamic>{
      'jokes': instance.jokes,
    };
