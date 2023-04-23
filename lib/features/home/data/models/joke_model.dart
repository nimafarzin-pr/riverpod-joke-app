import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/joke_entity.dart';

part 'joke_model.freezed.dart';
part 'joke_model.g.dart';

List<JokeModel> companyListModelFromJson(String str) {
  final data = json.decode(str);
  return List<JokeModel>.from(data.map((x) {
    return JokeModel.fromJson(x);
  }));
}

String companyListModelToJson(List<JokeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JokeModel with _$JokeModel {
  const factory JokeModel({
    String? joke,
    int? id,
    @Default(false) bool isSelected,
  }) = _JokeModel;
  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
  factory JokeModel.fromEntity(JokeEntity entity) => JokeModel(
      joke: entity.joke, id: entity.id, isSelected: entity.isSelected);
}
