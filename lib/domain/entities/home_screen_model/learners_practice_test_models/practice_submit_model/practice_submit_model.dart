import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'practice_submit_model.g.dart';
@HiveType(typeId: 4)
@JsonSerializable()
class LearnersPracticeSubmitModel {
    @HiveField(1)
    @JsonKey(name: "data")
    List<PracticeData>? data;

    LearnersPracticeSubmitModel({
        this.data,
    });

    LearnersPracticeSubmitModel copyWith({
        List<PracticeData>? data,
    }) => 
        LearnersPracticeSubmitModel(
            data: data ?? this.data,
        );

    factory LearnersPracticeSubmitModel.fromJson(Map<String, dynamic> json) => _$LearnersPracticeSubmitModelFromJson(json);

    Map<String, dynamic> toJson() => _$LearnersPracticeSubmitModelToJson(this);
}

@HiveType(typeId: 5)
@JsonSerializable()
class PracticeData {
    @HiveField(1)
    @JsonKey(name: "user_id")
    String? userId;
    @HiveField(3)
    @JsonKey(name: "question_id")
    String? questionId;
    @HiveField(5)
    @JsonKey(name: "answer")
    String? answer;

    PracticeData({
        this.userId,
        this.questionId,
        this.answer,
    });

    PracticeData copyWith({
        String? userId,
        String? questionId,
        String? answer,
    }) => 
        PracticeData(
            userId: userId ?? this.userId,
            questionId: questionId ?? this.questionId,
            answer: answer ?? this.answer,
        );

    factory PracticeData.fromJson(Map<String, dynamic> json) => _$PracticeDataFromJson(json);

    Map<String, dynamic> toJson() => _$PracticeDataToJson(this);
}
