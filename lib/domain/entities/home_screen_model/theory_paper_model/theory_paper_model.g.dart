// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theory_paper_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LeadsTheoryModelAdapter extends TypeAdapter<LeadsTheoryModel> {
  @override
  final int typeId = 1;

  @override
  LeadsTheoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LeadsTheoryModel(
      success: fields[1] as bool?,
      data: fields[3] as TheoryData?,
      error: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, LeadsTheoryModel obj) {
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
      other is LeadsTheoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TheoryDataAdapter extends TypeAdapter<TheoryData> {
  @override
  final int typeId = 2;

  @override
  TheoryData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TheoryData(
      count: fields[1] as int?,
      next: fields[3] as String?,
      previous: fields[5] as dynamic,
      current: fields[7] as int?,
      results: (fields[9] as List?)?.cast<TheoryResult>(),
    );
  }

  @override
  void write(BinaryWriter writer, TheoryData obj) {
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
      other is TheoryDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TheoryResultAdapter extends TypeAdapter<TheoryResult> {
  @override
  final int typeId = 3;

  @override
  TheoryResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TheoryResult(
      id: fields[1] as String?,
      title: fields[3] as String?,
      description: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TheoryResult obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TheoryResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadsTheoryModel _$LeadsTheoryModelFromJson(Map<String, dynamic> json) =>
    LeadsTheoryModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : TheoryData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$LeadsTheoryModelToJson(LeadsTheoryModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

TheoryData _$TheoryDataFromJson(Map<String, dynamic> json) => TheoryData(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'],
      current: (json['current'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TheoryResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TheoryDataToJson(TheoryData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'current': instance.current,
      'results': instance.results,
    };

TheoryResult _$TheoryResultFromJson(Map<String, dynamic> json) => TheoryResult(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TheoryResultToJson(TheoryResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
