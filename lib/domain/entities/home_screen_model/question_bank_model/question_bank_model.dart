import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'question_bank_model.g.dart';
@HiveType(typeId: 6)
@JsonSerializable()
class QuestionBankModel {
  @HiveField(1)
  @JsonKey(name: "success")
  bool? success;

  @HiveField(3)
  @JsonKey(name: "data")
  QuestionBankData? data;

  @HiveField(5)
  @JsonKey(name: "error")
  dynamic error;

  QuestionBankModel({
    this.success,
    this.data,
    this.error,
  });

  QuestionBankModel copyWith({
    bool? success,
    QuestionBankData? data,
    dynamic error,
  }) =>
      QuestionBankModel(
        success: success ?? this.success,
        data: data ?? this.data,
        error: error ?? this.error,
      );

  factory QuestionBankModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionBankModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionBankModelToJson(this);
}

@HiveType(typeId: 7)
@JsonSerializable()
class QuestionBankData {
  @HiveField(1)
  @JsonKey(name: "count")
  int? count;

  @HiveField(3)
  @JsonKey(name: "next")
  String? next;

  @HiveField(5)
  @JsonKey(name: "previous")
  dynamic previous;

  @HiveField(7)
  @JsonKey(name: "current")
  int? current;

  @HiveField(9)
  @JsonKey(name: "results")
  List<QuestionBankResult>? results;

  QuestionBankData({
    this.count,
    this.next,
    this.previous,
    this.current,
    this.results,
  });

  QuestionBankData copyWith({
    int? count,
    String? next,
    dynamic previous,
    int? current,
    List<QuestionBankResult>? results,
  }) =>
      QuestionBankData(
        count: count ?? this.count,
        next: next ?? this.next,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        results: results ?? this.results,
      );

  factory QuestionBankData.fromJson(Map<String, dynamic> json) => _$QuestionBankDataFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionBankDataToJson(this);
}

@HiveType(typeId: 8)
@JsonSerializable()
class QuestionBankResult {
  @HiveField(1)
  @JsonKey(name: "_id")
  String? id;

  @HiveField(3)
  @JsonKey(name: "questions")
  String? questions;

  @HiveField(5)
  @JsonKey(name: "question_image")
  String? questionImage;

  @HiveField(7)
  @JsonKey(name: "option_1")
  String? option1;

  @HiveField(9)
  @JsonKey(name: "option_1_image")
  String? option1Image;

  @HiveField(11)
  @JsonKey(name: "option_2")
  String? option2;

  @HiveField(13)
  @JsonKey(name: "option_2_image")
  String? option2Image;

  @HiveField(15)
  @JsonKey(name: "option_3")
  String? option3;

  @HiveField(17)
  @JsonKey(name: "option_3_image")
  String? option3Image;

  @HiveField(19)
  @JsonKey(name: "option_4")
  String? option4;

  @HiveField(21)
  @JsonKey(name: "option_4_image")
  String? option4Image;

  @HiveField(23)
  @JsonKey(name: "answer")
  String? answer;

  QuestionBankResult({
    this.id,
    this.questions,
    this.questionImage,
    this.option1,
    this.option1Image,
    this.option2,
    this.option2Image,
    this.option3,
    this.option3Image,
    this.option4,
    this.option4Image,
    this.answer,
  });

  factory QuestionBankResult.fromJson(Map<String, dynamic> json) => _$QuestionBankResultFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionBankResultToJson(this);
}
