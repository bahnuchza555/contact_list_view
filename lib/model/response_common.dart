class ResponseCommon {
  int? code;
  String? message;
  Map<String, dynamic>? data;
  Map<String, dynamic>? info;

  ResponseCommon({this.code, this.message, this.data, this.info});

  ResponseCommon.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'];
    info = json['info'];
  }
}