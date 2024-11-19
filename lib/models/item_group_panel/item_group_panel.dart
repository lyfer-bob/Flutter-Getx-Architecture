import 'dart:convert';

class GroupPanelModel {
  int? id;
  String? touchPanelType;
  int? groupButtonId;
  String? groupButtonLabel;
  String? groupButtonImage;
  String? bgColor;
  String? txtColor;
  double? txtFontSize;
  String? createBy;
  DateTime? createDate;
  String? updateBy;
  DateTime? lastUpdate;

  GroupPanelModel({
    this.id,
    this.touchPanelType,
    this.groupButtonId,
    this.groupButtonLabel,
    this.groupButtonImage,
    this.bgColor,
    this.txtColor,
    this.txtFontSize,
    this.createBy,
    this.createDate,
    this.updateBy,
    this.lastUpdate,
  });

  factory GroupPanelModel.fromRawJson(String str) =>
      GroupPanelModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupPanelModel.fromJson(Map<String, dynamic> json) =>
      GroupPanelModel(
        id: json["id"],
        touchPanelType: json["touchPanelType"],
        groupButtonId: json["groupButtonId"],
        groupButtonLabel: json["groupButtonLabel"],
        groupButtonImage: json["groupButtonImage"],
        bgColor: json["bgColor"],
        txtColor: json["txtColor"] ?? 'ff000000',
        txtFontSize: json["txtFontSize"]?.toDouble(),
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
        "touchPanelType": touchPanelType,
        "groupButtonId": groupButtonId,
        "groupButtonLabel": groupButtonLabel,
        "groupButtonImage": groupButtonImage,
        "bgColor": bgColor,
        "txtColor": txtColor,
        "txtFontSize": txtFontSize,
        "createBy": createBy,
        "createDate": createDate?.toIso8601String(),
        "updateBy": updateBy,
        "lastUpdate": lastUpdate?.toIso8601String(),
      };
}
