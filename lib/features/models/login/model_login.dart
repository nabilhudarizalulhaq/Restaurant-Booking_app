import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_login.freezed.dart';
part 'model_login.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
