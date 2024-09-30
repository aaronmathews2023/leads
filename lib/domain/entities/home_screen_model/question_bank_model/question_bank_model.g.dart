// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bank_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionBankModelAdapter extends TypeAdapter<QuestionBankModel> {
  @override
  final int typeId = 6;

  @override
  QuestionBankModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionBankModel(
      success: fields[1] as bool?,
      data: fields[3] as QuestionBankData?,
      error: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionBankModel obj) {
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
      other is QuestionBankModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuestionBankDataAdapter extends TypeAdapter<QuestionBankData> {
  @override
  final int typeId = 7;

  @override
  QuestionBankData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionBankData(
      count: fields[1] as int?,
      next: fields[3] as String?,
      previous: fields[5] as dynamic,
      current: fields[7] as int?,
      results: (fields[9] as List?)?.cast<QuestionBankResult>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionBankData obj) {
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
      other is QuestionBankDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuestionBankResultAdapter extends TypeAdapter<QuestionBankResult> {
  @override
  final int typeId = 8;

  @override
  QuestionBankResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionBankResult(
      id: fields[1] as String?,
      questions: fields[3] as String?,
      questionImage: fields[5] as String?,
      option1: fields[7] as String?,
      option1Image: fields[9] as String?,
      option2: fields[11] as String?,
      option2Image: fields[13] as String?,
      option3: fields[15] as String?,
      option3Image: fields[17] as String?,
      option4: fields[19] as String?,
      option4Image: fields[21] as String?,
      answer: fields[23] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionBankResult obj) {
    writer
      ..writeByte(12)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.questions)
      ..writeByte(5)
      ..write(obj.questionImage)
      ..writeByte(7)
      ..write(obj.option1)
      ..writeByte(9)
      ..write(obj.option1Image)
      ..writeByte(11)
      ..write(obj.option2)
      ..writeByte(13)
      ..write(obj.option2Image)
      ..writeByte(15)
      ..write(obj.option3)
      ..writeByte(17)
      ..write(obj.option3Image)
      ..writeByte(19)
      ..write(obj.option4)
      ..writeByte(21)
      ..write(obj.option4Image)
      ..writeByte(23)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionBankResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionBankModel _$QuestionBankModelFromJson(Map<String, dynamic> json) =>
    QuestionBankModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : QuestionBankData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$QuestionBankModelToJson(QuestionBankModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

QuestionBankData _$QuestionBankDataFromJson(Map<String, dynamic> json) =>
    QuestionBankData(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'],
      current: (json['current'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => QuestionBankResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionBankDataToJson(QuestionBankData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'current': instance.current,
      'results': instance.results,
    };

QuestionBankResult _$QuestionBankResultFromJson(Map<String, dynamic> json) =>
    QuestionBankResult(
      id: json['_id'] as String?,
      questions: json['questions'] as String?,
      questionImage: json['question_image'] as String?,
      option1: json['option_1'] as String?,
      option1Image: json['option_1_image'] as String?,
      option2: json['option_2'] as String?,
      option2Image: json['option_2_image'] as String?,
      option3: json['option_3'] as String?,
      option3Image: json['option_3_image'] as String?,
      option4: json['option_4'] as String?,
      option4Image: json['option_4_image'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$QuestionBankResultToJson(QuestionBankResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
