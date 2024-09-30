// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_question_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PracticeQuestionModelAdapter extends TypeAdapter<PracticeQuestionModel> {
  @override
  final int typeId = 1;

  @override
  PracticeQuestionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PracticeQuestionModel(
      success: fields[1] as bool?,
      data: fields[3] as PracticeQuestionData?,
      error: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, PracticeQuestionModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.success)
      ..writeByte(3)
      ..write(obj.data)
      ..writeByte(5)
      ..write(obj.error);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PracticeQuestionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PracticeQuestionDataAdapter extends TypeAdapter<PracticeQuestionData> {
  @override
  final int typeId = 2;

  @override
  PracticeQuestionData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PracticeQuestionData(
      count: fields[1] as int?,
      next: fields[3] as String?,
      previous: fields[5] as dynamic,
      current: fields[7] as int?,
      results: (fields[9] as List?)?.cast<PracticeQuesResult>(),
    );
  }

  @override
  void write(BinaryWriter writer, PracticeQuestionData obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.next)
      ..writeByte(5)
      ..write(obj.previous)
      ..writeByte(7)
      ..write(obj.current)
      ..writeByte(9)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PracticeQuestionDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PracticeQuesResultAdapter extends TypeAdapter<PracticeQuesResult> {
  @override
  final int typeId = 3;

  @override
  PracticeQuesResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PracticeQuesResult(
      id: fields[1] as String?,
      language: fields[3] as String?,
      topic: fields[5] as String?,
      questionMode: fields[7] as String?,
      questions: fields[9] as String?,
      questionImage: fields[11] as dynamic,
      option1: fields[13] as String?,
      option1Image: fields[15] as dynamic,
      option2: fields[17] as String?,
      option2Image: fields[19] as dynamic,
      option3: fields[21] as String?,
      option3Image: fields[23] as dynamic,
      option4: fields[25] as String?,
      option4Image: fields[27] as dynamic,
      answer: fields[29] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PracticeQuesResult obj) {
    writer
      ..writeByte(15)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.topic)
      ..writeByte(7)
      ..write(obj.questionMode)
      ..writeByte(9)
      ..write(obj.questions)
      ..writeByte(11)
      ..write(obj.questionImage)
      ..writeByte(13)
      ..write(obj.option1)
      ..writeByte(15)
      ..write(obj.option1Image)
      ..writeByte(17)
      ..write(obj.option2)
      ..writeByte(19)
      ..write(obj.option2Image)
      ..writeByte(21)
      ..write(obj.option3)
      ..writeByte(23)
      ..write(obj.option3Image)
      ..writeByte(25)
      ..write(obj.option4)
      ..writeByte(27)
      ..write(obj.option4Image)
      ..writeByte(29)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PracticeQuesResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PracticeQuestionModel _$PracticeQuestionModelFromJson(
        Map<String, dynamic> json) =>
    PracticeQuestionModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : PracticeQuestionData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$PracticeQuestionModelToJson(
        PracticeQuestionModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

PracticeQuestionData _$PracticeQuestionDataFromJson(
        Map<String, dynamic> json) =>
    PracticeQuestionData(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'],
      current: (json['current'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PracticeQuesResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PracticeQuestionDataToJson(
        PracticeQuestionData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'current': instance.current,
      'results': instance.results,
    };

PracticeQuesResult _$PracticeQuesResultFromJson(Map<String, dynamic> json) =>
    PracticeQuesResult(
      id: json['_id'] as String?,
      language: json['language'] as String?,
      topic: json['topic'] as String?,
      questionMode: json['question_mode'] as String?,
      questions: json['questions'] as String?,
      questionImage: json['question_image'],
      option1: json['option_1'] as String?,
      option1Image: json['option_1_image'],
      option2: json['option_2'] as String?,
      option2Image: json['option_2_image'],
      option3: json['option_3'] as String?,
      option3Image: json['option_3_image'],
      option4: json['option_4'] as String?,
      option4Image: json['option_4_image'],
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$PracticeQuesResultToJson(PracticeQuesResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'language': instance.language,
      'topic': instance.topic,
      'question_mode': instance.questionMode,
      'questions': instance.questions,
      'question_image': instance.questionImage,
      'option_1': instance.option1,
      'option_1_image': instance.option1Image,
      'option_2': instance.option2,
      'option_2_image': instance.option2Image,
      'option_3': instance.option3,
      'option_3_image': instance.option3Image,
      'option_4': instance.option4,
      'option_4_image': instance.option4Image,
      'answer': instance.answer,
    };
