import 'package:mobx_setup/common/string_res.dart';

class ErrorResponse {
  ErrorResponse({this.errors});

  final List<Error> errors;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
      };

  Map<String, String> simplify() {
    Map<String, String> errorsMap = Map();
    errors.forEach((e) {
      if (e.source != null && e.source.pointer.isNotEmpty) {
        errorsMap[e.source.pointer] = e.detail;
      }
    });
    if (errorsMap.isEmpty) {
      errorsMap = {
        'general': errors.first.detail.toLowerCase().contains('sqlstate') ||
                errors.first.status == '500'
            ? Strings.somethingWentWrong
            : errors.first.detail,
        'code': errors.first.status
      };
    }
    return errorsMap;
  }

  String get generalError => simplify()['general'];
}

class Error {
  Error({
    this.status,
    this.code,
    this.title,
    this.detail,
    this.source,
  });

  final String status;
  final String code;
  final String title;
  final String detail;
  final Source source;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        status: json["status"],
        code: json["code"],
        title: json["title"],
        detail: json["detail"],
        source: Source.fromJson(json["source"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "title": title,
        "detail": detail,
        "source": source.toJson(),
      };
}

class Source {
  Source({
    this.pointer,
  });

  final String pointer;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        pointer: json["pointer"],
      );

  Map<String, dynamic> toJson() => {
        "pointer": pointer,
      };
}
