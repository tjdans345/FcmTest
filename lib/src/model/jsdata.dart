import 'package:freezed_annotation/freezed_annotation.dart';
part 'jsdata.freezed.dart';
part 'jsdata.g.dart';

@freezed
class Jsdata with _$Jsdata {
  factory Jsdata ({
    required int statusCode,
    required String statusMessage,
    required int id,
    String? name,
    String? email,
    String? birthday,
    String? gender,
    String? accessToken,
    String? state,
}) = _Jsdata;
  factory Jsdata.fromJson(Map<String, dynamic> json) => _$JsdataFromJson(json);

}
