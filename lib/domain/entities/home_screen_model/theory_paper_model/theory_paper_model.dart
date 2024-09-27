import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'theory_paper_model.g.dart';
@HiveType(typeId: 1)
@JsonSerializable()
class LeadsTheoryModel {
    @HiveField(1)
    @JsonKey(name: "success")
    bool? success;
    @HiveField(3)
    @JsonKey(name: "data")
    TheoryData? data;
    @HiveField(5)
    @JsonKey(name: "error")
    dynamic error;

    LeadsTheoryModel({
        this.success,
        this.data,
        this.error,
    });

    LeadsTheoryModel copyWith({
        bool? success,
        TheoryData? data,
        dynamic error,
    }) => 
        LeadsTheoryModel(
            success: success ?? this.success,
            data: data ?? this.data,
            error: error ?? this.error,
        );

    factory LeadsTheoryModel.fromJson(Map<String, dynamic> json) => _$LeadsTheoryModelFromJson(json);

    Map<String, dynamic> toJson() => _$LeadsTheoryModelToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class TheoryData {
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
    List<TheoryResult>? results;

    TheoryData({
        this.count,
        this.next,
        this.previous,
        this.current,
        this.results,
    });

    TheoryData copyWith({
        int? count,
        String? next,
        dynamic previous,
        int? current,
        List<TheoryResult>? results,
    }) => 
        TheoryData(
            count: count ?? this.count,
            next: next ?? this.next,
            previous: previous ?? this.previous,
            current: current ?? this.current,
            results: results ?? this.results,
        );

    factory TheoryData.fromJson(Map<String, dynamic> json) => _$TheoryDataFromJson(json);

    Map<String, dynamic> toJson() => _$TheoryDataToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class TheoryResult {
    @HiveField(1)
    @JsonKey(name: "_id")
    String? id;
    @HiveField(3)
    @JsonKey(name: "title")
    String? title;
    @HiveField(5)
    @JsonKey(name: "description")
    String? description;

    TheoryResult({
        this.id,
        this.title,
        this.description,
    });

    TheoryResult copyWith({
        String? id,
        String? title,
        String? description,
    }) => 
        TheoryResult(
            id: id ?? this.id,
            title: title ?? this.title,
            description: description ?? this.description,
        );

    factory TheoryResult.fromJson(Map<String, dynamic> json) => _$TheoryResultFromJson(json);

    Map<String, dynamic> toJson() => _$TheoryResultToJson(this);
}
