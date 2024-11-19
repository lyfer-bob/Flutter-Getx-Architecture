import 'dart:convert';

class PosStationModel {
  int? id;
  String? docNo;
  int? lineItemNo;
  String? lineItemType;
  String? discCouponType;
  String? discCouponNo;
  String? promoId;
  double? discPc;
  double? discamt;
  double? chargePc;
  double? chargeAmt;
  String? createBy;
  DateTime? createDate;
  String? updateBy;
  DateTime? lastUpdate;

  PosStationModel({
    this.id,
    this.docNo,
    this.lineItemNo,
    this.lineItemType,
    this.discCouponType,
    this.discCouponNo,
    this.promoId,
    this.discPc,
    this.discamt,
    this.chargePc,
    this.chargeAmt,
    this.createBy,
    this.createDate,
    this.updateBy,
    this.lastUpdate,
  });

  factory PosStationModel.fromRawJson(String str) =>
      PosStationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PosStationModel.fromJson(Map<String, dynamic> json) =>
      PosStationModel(
        id: json["id"],
        docNo: json["docNo"],
        lineItemNo: json["lineItemNo"],
        lineItemType: json["lineItemType"],
        discCouponType: json["discCouponType"],
        discCouponNo: json["discCouponNo"],
        promoId: json["promoId"],
        discPc: json["discPc"]?.toDouble(),
        discamt: json["discamt"]?.toDouble(),
        chargePc: json["chargePc"]?.toDouble(),
        chargeAmt: json["chargeAmt"]?.toDouble(),
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
        "docNo": docNo,
        "lineItemNo": lineItemNo,
        "lineItemType": lineItemType,
        "discCouponType": discCouponType,
        "discCouponNo": discCouponNo,
        "promoId": promoId,
        "discPc": discPc,
        "discamt": discamt,
        "chargePc": chargePc,
        "chargeAmt": chargeAmt,
        "createBy": createBy,
        "createDate": createDate?.toIso8601String(),
        "updateBy": updateBy,
        "lastUpdate": lastUpdate?.toIso8601String(),
      };
}
