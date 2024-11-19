import 'dart:convert';

class ItemPanelModel {
  int? id;
  String? touchPanelType;
  int? groupButtonId;
  String? itemButtonLabel;
  String? itemButtonImage;
  String? linkCode;
  int? linkCodeFg;
  String? createBy;
  DateTime? createDate;
  String? updateBy;
  DateTime? lastUpdate;
  double? txtFontSize;
  String? txtColor;
  String? bgColor;
  int? itemButtonId;

  ItemPanelModel({
    this.id,
    this.touchPanelType,
    this.groupButtonId,
    this.itemButtonLabel,
    this.itemButtonImage,
    this.linkCode,
    this.linkCodeFg,
    this.createBy,
    this.createDate,
    this.updateBy,
    this.lastUpdate,
    this.txtFontSize,
    this.txtColor,
    this.bgColor,
    this.itemButtonId,
  });

  factory ItemPanelModel.fromRawJson(String str) =>
      ItemPanelModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemPanelModel.fromJson(Map<String, dynamic> json) => ItemPanelModel(
        id: json["id"],
        touchPanelType: json["touchPanelType"],
        groupButtonId: json["groupButtonId"],
        itemButtonLabel: json["itemButtonLabel"],
        itemButtonImage: json["itemButtonImage"],
        linkCode: json["linkCode"],
        linkCodeFg: json["linkCodeFg"],
        createBy: json["createBy"],
        createDate: json["createDate"] == null
            ? null
            : DateTime.parse(json["createDate"]),
        updateBy: json["updateBy"],
        lastUpdate: json["lastUpdate"] == null
            ? null
            : DateTime.parse(json["lastUpdate"]),
        txtFontSize: json["txtFontSize"]?.toDouble(),
        txtColor: json["txtColor"],
        bgColor: json["bgColor"],
        itemButtonId: json["itemButtonId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "touchPanelType": touchPanelType,
        "groupButtonId": groupButtonId,
        "itemButtonLabel": itemButtonLabel,
        "itemButtonImage": itemButtonImage,
        "linkCode": linkCode,
        "linkCodeFg": linkCodeFg,
        "createBy": createBy,
        "createDate": createDate?.toIso8601String(),
        "updateBy": updateBy,
        "lastUpdate": lastUpdate?.toIso8601String(),
        "txtFontSize": txtFontSize,
        "txtColor": txtColor,
        "bgColor": bgColor,
        "itemButtonId": itemButtonId,
      };
}
