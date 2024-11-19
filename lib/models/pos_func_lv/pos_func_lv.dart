import 'dart:convert';

class PosFuncLvModel {
  int? id;
  String? funcId;
  String? funcDesc;
  int? funLevel;
  int? funcUsage;
  int? kbMapShiftCode;
  int? kbMapKeyCode;
  String? funcKeyLable;
  String? createBy;
  DateTime? createDate;
  String? updateBy;
  DateTime? lastUpdate;

  PosFuncLvModel({
    this.id,
    this.funcId,
    this.funcDesc,
    this.funLevel,
    this.funcUsage,
    this.kbMapShiftCode,
    this.kbMapKeyCode,
    this.funcKeyLable,
    this.createBy,
    this.createDate,
    this.updateBy,
    this.lastUpdate,
  });

  factory PosFuncLvModel.fromRawJson(String str) =>
      PosFuncLvModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PosFuncLvModel.fromJson(Map<String, dynamic> json) => PosFuncLvModel(
        id: json["id"],
        funcId: json["funcId"],
        funcDesc: json["funcDesc"],
        funLevel: json["funLevel"],
        funcUsage: json["funcUsage"],
        kbMapShiftCode: json["kbMapShiftCode"],
        kbMapKeyCode: json["kbMapKeyCode"],
        funcKeyLable: json["funcKeyLable"],
        createBy: json["createBy"],
        createDate: json["createDate"] == null
            ? null
            : DateTime.parse(json["createDate"]),
        updateBy: json["updateBy"],
        lastUpdate: json["lastUpdate"] == null
            ? null
            : DateTime.parse(json["lastUpdate"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "funcId": funcId,
        "funcDesc": funcDesc,
        "funLevel": funLevel,
        "funcUsage": funcUsage,
        "kbMapShiftCode": kbMapShiftCode,
        "kbMapKeyCode": kbMapKeyCode,
        "funcKeyLable": funcKeyLable,
        "createBy": createBy,
        "createDate": createDate?.toIso8601String(),
        "updateBy": updateBy,
        "lastUpdate": lastUpdate?.toIso8601String(),
      };
}
