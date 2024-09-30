import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'practice_question_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class PracticeQuestionModel {
    @HiveField(1)
    @JsonKey(name: "success")
    bool? success;
    @HiveField(3)
    @JsonKey(name: "data")
    PracticeQuestionData? data;
    @HiveField(5)
    @JsonKey(name: "error")
    dynamic error;

    PracticeQuestionModel({
        this.success,
        this.data,
        this.error,
    });

    PracticeQuestionModel copyWith({
        bool? success,
        PracticeQuestionData? data,
        dynamic error,
    }) => 
        PracticeQuestionModel(
            success: success ?? this.success,
            data: data ?? this.data,
            error: error ?? this.error,
        );

    factory PracticeQuestionModel.fromJson(Map<String, dynamic> json) => _$PracticeQuestionModelFromJson(json);

    Map<String, dynamic> toJson() => _$PracticeQuestionModelToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class PracticeQuestionData {
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
    List<PracticeQuesResult>? results;

    PracticeQuestionData({
        this.count,
        this.next,
        this.previous,
        this.current,
        this.results,
    });

    PracticeQuestionData copyWith({
        int? count,
        String? next,
        dynamic previous,
        int? current,
        List<PracticeQuesResult>? results,
    }) => 
        PracticeQuestionData(
            count: count ?? this.count,
            next: next ?? this.next,
            previous: previous ?? this.previous,
            current: current ?? this.current,
            results: results ?? this.results,
        );

    factory PracticeQuestionData.fromJson(Map<String, dynamic> json) => _$PracticeQuestionDataFromJson(json);

    Map<String, dynamic> toJson() => _$PracticeQuestionDataToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class PracticeQuesResult {
    @HiveField(1)
    @JsonKey(name: "_id")
    String? id;
    @HiveField(3)
    @JsonKey(name: "language")
    String? language;
    @HiveField(5)
    @JsonKey(name: "topic")
    String? topic;
    @HiveField(7)
    @JsonKey(name: "question_mode")
    String? questionMode;
    @HiveField(9)
    @JsonKey(name: "questions")
    String? questions;
    @HiveField(11)
    @JsonKey(name: "question_image")
    dynamic questionImage;
    @HiveField(13)
    @JsonKey(name: "option_1")
    String? option1;
    @HiveField(15)
    @JsonKey(name: "option_1_image")
    dynamic option1Image;
    @HiveField(17)
    @JsonKey(name: "option_2")
    String? option2;
    @HiveField(19)
    @JsonKey(name: "option_2_image")
    dynamic option2Image;
    @HiveField(21)
    @JsonKey(name: "option_3")
    String? option3;
    @HiveField(23)
    @JsonKey(name: "option_3_image")
    dynamic option3Image;
    @HiveField(25)
    @JsonKey(name: "option_4")
    String? option4;
    @HiveField(27)
    @JsonKey(name: "option_4_image")
    dynamic option4Image;
    @HiveField(29)
    @JsonKey(name: "answer")
    String? answer;

    PracticeQuesResult({
        this.id,
        this.language,
        this.topic,
        this.questionMode,
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

    PracticeQuesResult copyWith({
        String? id,
        String? language,
        String? topic,
        String? questionMode,
        String? questions,
        dynamic questionImage,
        String? option1,
        dynamic option1Image,
        String? option2,
        dynamic option2Image,
        String? option3,
        dynamic option3Image,
        String? option4,
        dynamic option4Image,
        String? answer,
    }) => 
        PracticeQuesResult(
            id: id ?? this.id,
            language: language ?? this.language,
            topic: topic ?? this.topic,
            questionMode: questionMode ?? this.questionMode,
            questions: questions ?? this.questions,
            questionImage: questionImage ?? this.questionImage,
            option1: option1 ?? this.option1,
            option1Image: option1Image ?? this.option1Image,
            option2: option2 ?? this.option2,
            option2Image: option2Image ?? this.option2Image,
            option3: option3 ?? this.option3,
            option3Image: option3Image ?? this.option3Image,
            option4: option4 ?? this.option4,
            option4Image: option4Image ?? this.option4Image,
            answer: answer ?? this.answer,
        );

    factory PracticeQuesResult.fromJson(Map<String, dynamic> json) => _$PracticeQuesResultFromJson(json);

    Map<String, dynamic> toJson() => _$PracticeQuesResultToJson(this);
}
