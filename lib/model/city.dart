import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    String? cityCode,
    String? provCode,
    String? dati2,
    String? action,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
