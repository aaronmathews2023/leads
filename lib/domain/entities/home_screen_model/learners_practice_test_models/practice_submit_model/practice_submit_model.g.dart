// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_submit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LearnersPracticeSubmitModelAdapter
    extends TypeAdapter<LearnersPracticeSubmitModel> {
  @override
  final int typeId = 4;

  @override
  LearnersPracticeSubmitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LearnersPracticeSubmitModel(
      data: (fields[1] as List?)?.cast<PracticeData>(),
    );
  }

  @override
  void write(BinaryWriter writer, LearnersPracticeSubmitModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LearnersPracticeSubmitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PracticeDataAdapter extends TypeAdapter<PracticeData> {
  @override
  final int typeId = 5;

  @override
  PracticeData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PracticeData(
      userId: fields[1] as String?,
      questionId: fields[3] as String?,
      answer: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PracticeData obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.questionId)
      ..writeByte(5)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PracticeDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LearnersPracticeSubmitModel _$LearnersPracticeSubmitModelFromJson(
        Map<String, dynamic> json) =>
    LearnersPracticeSubmitModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PracticeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LearnersPracticeSubmitModelToJson(
        LearnersPracticeSubmitModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

PracticeData _$PracticeDataFromJson(Map<String, dynamic> json) => PracticeData(
      userId: json['user_id'] as String?,
      questionId: json['question_id'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$PracticeDataToJson(PracticeData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'question_id': instance.questionId,
      'answer': instance.answer,
    };
