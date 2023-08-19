import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_diary_response.g.dart';

@JsonSerializable(createToJson: false)
class NewDiaryResponse extends Equatable {
  final String id;

  final DateTime createdAt;

  const NewDiaryResponse({
    required this.id,
    required this.createdAt,
  });

  factory NewDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$NewDiaryResponseFromJson(json);

  @override
  List<Object?> get props => [id, createdAt];
}
