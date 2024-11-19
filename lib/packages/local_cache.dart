import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mypos/models/local_cache.dart';

abstract class ILocalCache {
  FutureOr<LocalCacheModel> getLocalCache();
  Future<void> setPosId(String value);
  Future<void> setShopId(String value);
  Future<void> setLastReceiptRunno(String value);
  Future<void> setLastRefundRunno(String value);
  Future<void> setAutoChargeFg(String value);
  Future<void> setAutoChargeRate(String value);
  Future<void> setConnectPrinterFg(String value);
  Future<void> setConnectEdcFg(String value);
  Future<void> setShopLogoOnReceipt(String value);
  Future<void> setPermitNo(String value);
  Future<void> setPosTouchPanelId(String value);
  Future<void> setReceipHeadMesg1(String value);
  Future<void> setReceipHeadMesg2(String value);
  Future<void> setReceipHeadMesg3(String value);
  Future<void> setReceipHeadMesg4(String value);
  Future<void> setReceipHeadMesg5(String value);
  Future<void> setReceipHeadMesg6(String value);
  Future<void> setReceipFootMesg1(String value);
  Future<void> setReceipFootMesg2(String value);
  Future<void> setReceipFootMesg3(String value);
  Future<void> setReceipFootMesg4(String value);
  Future<void> setReceipFootMesg5(String value);
  Future<void> setReceipFootMesg6(String value);
  Future<void> setReceipFootMesg7(String value);
  Future<void> setReceipFootMesg8(String value);
  Future<void> setReceipFootMesg9(String value);
  Future<void> setReceipFootMesg10(String value);
  Future<void> setReceipNoBarcodeFg(String value);
  Future<void> setSaleVatType(String value);
  Future<void> setAllowSaleOverStock(String value);
  Future<void> setQrcodeAccount(String value);

  Future<void> setCashierLevel(String value);
  Future<void> setFuncConfigShop(String value);
  Future<void> setfuncSalePageSearch(String value);
  Future<void> setFuncSalePageMember(String value);
  Future<void> setFuncSalePageSaleman(String value);
  Future<void> setFuncSalePageVoidAll(String value);
  Future<void> setFuncSalePageChargeBath(String value);
  Future<void> setFuncSalePageChargePerc(String value);
  Future<void> setFuncSalePageCPDisFix(String value);
  Future<void> setFuncSalePageRefundCal(String value);
  Future<void> setFuncSalePageRefundAll(String value);
  Future<void> setFuncSalePageHoldBill(String value);
  Future<void> setFuncSalePageOrderSave(String value);
  Future<void> setFuncSalePageOrderCall(String value);

  Future<void> setFuncPromoAdvEndBilll(String value);
  Future<void> setStsPromoAdvEndBilll(String value);

  Future<void> setFuncBillDiscCPDisFix(String value);
  Future<void> setFuncPaymentCash(String value);
  Future<void> setFuncPaymentCredit(String value);
  Future<void> setFuncPaymentQr(String value);
  Future<void> setFuncPaymentCashCouponFix(String value);
  Future<void> clear();
}

class LocalCacheKey {
  static const String posId = 'pos_id';
  static const String shopId = 'shop_id';
  static const String lastReceiptRunno = 'last_receipt_runno';
  static const String lastRefundRunno = 'last_refund_runno';
  static const String autoChargeFg = 'auto_charge_fg';
  static const String autoChargeRate = 'auto_charge_rate';
  static const String connectPrinterFg = 'connect_printer_fg';
  static const String connectEdcFg = 'connect_edc_fg';
  static const String shopLogoOnReceipt = 'shop_logo_on_receipt';
  static const String permitNo = 'permit_no';
  static const String posTouchPanelId = 'pos_touch_panel_id';
  static const String receipHeadMesg1 = 'receip_head_mesg1';
  static const String receipHeadMesg2 = 'receip_head_mesg2';
  static const String receipHeadMesg3 = 'receip_head_mesg3';
  static const String receipHeadMesg4 = 'receip_head_mesg4';
  static const String receipHeadMesg5 = 'receip_head_mesg5';
  static const String receipHeadMesg6 = 'receip_head_mesg6';
  static const String receipFootMesg1 = 'receip_foot_mesg1';
  static const String receipFootMesg2 = 'receip_foot_mesg2';
  static const String receipFootMesg3 = 'receip_foot_mesg3';
  static const String receipFootMesg4 = 'receip_foot_mesg4';
  static const String receipFootMesg5 = 'receip_foot_mesg5';
  static const String receipFootMesg6 = 'receip_foot_mesg6';
  static const String receipFootMesg7 = 'receip_foot_mesg7';
  static const String receipFootMesg8 = 'receip_foot_mesg8';
  static const String receipFootMesg9 = 'receip_foot_mesg9';
  static const String receipFootMesg10 = 'receip_foot_mesg10';
  static const String receipNoBarcodeFg = 'receip_no_barcode_fg';
  static const String saleVatType = 'sale_vat_type';
  static const String allowSaleOverStock = 'allow_sale_over_stock';
  static const String qrcodeAccount = 'qrcod_account';

  // * functions level
  static const String cashierLevel = 'cashier_level';
  static const String funcConfigShop = 'config_shop/pos';
  static const String funcSalePageSearch = 'sale_page_seach';
  static const String funcSalePageMember = 'sale_page_member';
  static const String funcSalePageSaleman = 'sale_page_saleman';
  static const String funcSalePageVoidAll = 'sale_page_void_all';
  static const String funcSalePageChargeBath = 'sale_page_charge_bath';
  static const String funcSalePageChargePerc = 'sale_page_charge_perc';
  static const String funcSalePageCPDisFix = 'sale_page_cp_dis_fix';
  static const String funcBillDiscCPDisFix = 'bill_disc_cp_dis_fix';
  static const String funcSalePageRefundCal = 'sale_page_refund_cal';
  static const String funcSalePageRefundAll = 'sale_page_refund_all';
  static const String funcSalePageHoldBill = 'sale_page_hold_bill';
  static const String funcSalePageOrderSave = 'sale_page_order_save';
  static const String funcSalePageOrderCall = 'sale_page_order_call';
  static const String funcPromoAdvEndBill = 'promo_adv_end_bill';

  static const String stsPromoAdvEndBill = 'sts_promo_adv_end_bill';

  static const String funcPaymentCash = 'payment_cash';
  static const String funcPaymentCredit = 'payment_credit';
  static const String funcPaymentQr = 'payment_qr';
  static const String funcPaymentCashCouponFix = 'payment_CashCoupon_fix';
}

class LocalCache implements ILocalCache {
  @override
  FutureOr<LocalCacheModel> getLocalCache() async {
    final storage = await SharedPreferences.getInstance();
    final posId = storage.getString(LocalCacheKey.posId);
    final shopId = storage.getString(LocalCacheKey.shopId);
    final lastReceiptRunno = storage.getString(LocalCacheKey.lastReceiptRunno);
    final lastRefundRunno = storage.getString(LocalCacheKey.lastRefundRunno);
    final autoChargeFg = storage.getString(LocalCacheKey.autoChargeFg);
    final autoChargeRate = storage.getString(LocalCacheKey.autoChargeRate);
    final connectPrinterFg = storage.getString(LocalCacheKey.connectPrinterFg);
    final connectEdcFg = storage.getString(LocalCacheKey.connectEdcFg);
    final shopLogoOnReceipt =
        storage.getString(LocalCacheKey.shopLogoOnReceipt);
    final permitNo = storage.getString(LocalCacheKey.permitNo);
    final posTouchPanelId = storage.getString(LocalCacheKey.posTouchPanelId);
    final receipHeadMesg1 = storage.getString(LocalCacheKey.receipHeadMesg1);
    final receipHeadMesg2 = storage.getString(LocalCacheKey.receipHeadMesg2);
    final receipHeadMesg3 = storage.getString(LocalCacheKey.receipHeadMesg3);
    final receipHeadMesg4 = storage.getString(LocalCacheKey.receipHeadMesg4);
    final receipHeadMesg5 = storage.getString(LocalCacheKey.receipHeadMesg5);
    final receipHeadMesg6 = storage.getString(LocalCacheKey.receipHeadMesg6);
    final receipFootMesg1 = storage.getString(LocalCacheKey.receipFootMesg1);
    final receipFootMesg2 = storage.getString(LocalCacheKey.receipFootMesg2);
    final receipFootMesg3 = storage.getString(LocalCacheKey.receipFootMesg3);
    final receipFootMesg4 = storage.getString(LocalCacheKey.receipFootMesg4);
    final receipFootMesg5 = storage.getString(LocalCacheKey.receipFootMesg5);
    final receipFootMesg6 = storage.getString(LocalCacheKey.receipFootMesg6);
    final receipFootMesg7 = storage.getString(LocalCacheKey.receipFootMesg7);
    final receipFootMesg8 = storage.getString(LocalCacheKey.receipFootMesg8);
    final receipFootMesg9 = storage.getString(LocalCacheKey.receipFootMesg9);
    final receipFootMesg10 = storage.getString(LocalCacheKey.receipFootMesg10);
    final receipNoBarcodeFg =
        storage.getString(LocalCacheKey.receipNoBarcodeFg);
    final saleVatType = storage.getString(LocalCacheKey.saleVatType);
    final allowSaleOverStock =
        storage.getString(LocalCacheKey.allowSaleOverStock);
    final qrcodeAccount = storage.getString(LocalCacheKey.qrcodeAccount);

    final cashierLevel = storage.getString(LocalCacheKey.cashierLevel);
    final funcConfigShop = storage.getString(LocalCacheKey.funcConfigShop);
    final funcSalePageSearch =
        storage.getString(LocalCacheKey.funcSalePageSearch);
    final funcSalePageMember =
        storage.getString(LocalCacheKey.funcSalePageMember);
    final funcSalePageSaleman =
        storage.getString(LocalCacheKey.funcSalePageSaleman);
    final funcSalePageVoidAll =
        storage.getString(LocalCacheKey.funcSalePageVoidAll);
    final funcSalePageChargeBath =
        storage.getString(LocalCacheKey.funcSalePageChargeBath);
    final funcSalePageChargePerc =
        storage.getString(LocalCacheKey.funcSalePageChargePerc);
    final funcSalePageCPDisFix =
        storage.getString(LocalCacheKey.funcSalePageCPDisFix);
    final funcSalePageRefundCal =
        storage.getString(LocalCacheKey.funcSalePageRefundCal);
    final funcSalePageRefundAll =
        storage.getString(LocalCacheKey.funcSalePageRefundAll);
    final funcSalePageHoldBill =
        storage.getString(LocalCacheKey.funcSalePageHoldBill);

    final funcSalePageOrderSave =
        storage.getString(LocalCacheKey.funcSalePageOrderSave);
    final funcSalePageOrderCall =
        storage.getString(LocalCacheKey.funcSalePageOrderCall);

    final funcPromoAdvEndBill =
        storage.getString(LocalCacheKey.funcPromoAdvEndBill);
    final stsPromoAdvEndBill =
        storage.getString(LocalCacheKey.stsPromoAdvEndBill);

    final funcBillDiscCPDisFix =
        storage.getString(LocalCacheKey.funcBillDiscCPDisFix);
    final funcPaymentCash = storage.getString(LocalCacheKey.funcPaymentCash);
    final funcPaymentCredit =
        storage.getString(LocalCacheKey.funcPaymentCredit);
    final funcPaymentQr = storage.getString(LocalCacheKey.funcPaymentQr);
    final funcPaymentCashCouponFix =
        storage.getString(LocalCacheKey.funcPaymentCashCouponFix);

    return LocalCacheModel(
      posId: posId,
      shopId: shopId,
      lastReceiptRunno: lastReceiptRunno,
      lastRefundRunno: lastRefundRunno,
      autoChargeFg: autoChargeFg,
      autoChargeRate: autoChargeRate,
      connectPrinterFg: connectPrinterFg,
      connectEdcFg: connectEdcFg,
      shopLogoOnReceipt: shopLogoOnReceipt,
      permitNo: permitNo,
      posTouchPanelId: posTouchPanelId,
      receipHeadMesg1: receipHeadMesg1,
      receipHeadMesg2: receipHeadMesg2,
      receipHeadMesg3: receipHeadMesg3,
      receipHeadMesg4: receipHeadMesg4,
      receipHeadMesg5: receipHeadMesg5,
      receipHeadMesg6: receipHeadMesg6,
      receipFootMesg1: receipFootMesg1,
      receipFootMesg2: receipFootMesg2,
      receipFootMesg3: receipFootMesg3,
      receipFootMesg4: receipFootMesg4,
      receipFootMesg5: receipFootMesg5,
      receipFootMesg6: receipFootMesg6,
      receipFootMesg7: receipFootMesg7,
      receipFootMesg8: receipFootMesg8,
      receipFootMesg9: receipFootMesg9,
      receipNoBarcodeFg: receipNoBarcodeFg,
      receipFootMesg10: receipFootMesg10,
      saleVatType: saleVatType,
      allowSaleOverStock: allowSaleOverStock,
      qrcodeAccount: qrcodeAccount,
      cashierLevel: cashierLevel,
      funcConfigShop: funcConfigShop,
      funcSalePageSearch: funcSalePageSearch,
      funcSalePageMember: funcSalePageMember,
      funcSalePageSaleman: funcSalePageSaleman,
      funcSalePageVoidAll: funcSalePageVoidAll,
      funcSalePageChargeBath: funcSalePageChargeBath,
      funcSalePageChargePerc: funcSalePageChargePerc,
      funcSalePageCPDisFix: funcSalePageCPDisFix,
      funcSalePageHoldBill: funcSalePageHoldBill,
      funcSalePageRefundCal: funcSalePageRefundCal,
      funcSalePageRefundAll: funcSalePageRefundAll,
      funcSalePageOrderSave: funcSalePageOrderSave,
      funcSalePageOrderCall: funcSalePageOrderCall,
      funcPromoAdvEndBill: funcPromoAdvEndBill,
      stsPromoAdvEndBill: stsPromoAdvEndBill,
      funcBillDiscCPDisFix: funcBillDiscCPDisFix,
      funcPaymentCash: funcPaymentCash,
      funcPaymentCredit: funcPaymentCredit,
      funcPaymentQr: funcPaymentQr,
      funcPaymentCashCouponFix: funcPaymentCashCouponFix,
    );
  }

  @override
  Future<void> setPosId(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.posId, value);
  }

  @override
  Future<void> setShopId(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.shopId, value);
  }

  @override
  Future<void> setLastReceiptRunno(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.lastReceiptRunno, value);
  }

  @override
  Future<void> setLastRefundRunno(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.lastRefundRunno, value);
  }

  @override
  Future<void> setAutoChargeFg(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.autoChargeFg, value);
  }

  @override
  Future<void> setAutoChargeRate(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.autoChargeFg, value);
  }

  @override
  Future<void> setConnectPrinterFg(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.connectPrinterFg, value);
  }

  @override
  Future<void> setConnectEdcFg(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.connectEdcFg, value);
  }

  @override
  Future<void> setShopLogoOnReceipt(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.shopLogoOnReceipt, value);
  }

  @override
  Future<void> setReceipHeadMesg1(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg1, value);
  }

  @override
  Future<void> setReceipHeadMesg2(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg2, value);
  }

  @override
  Future<void> setReceipHeadMesg3(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg3, value);
  }

  @override
  Future<void> setReceipHeadMesg4(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg4, value);
  }

  @override
  Future<void> setReceipHeadMesg5(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg5, value);
  }

  @override
  Future<void> setReceipHeadMesg6(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipHeadMesg6, value);
  }

  @override
  Future<void> setReceipFootMesg1(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg1, value);
  }

  @override
  Future<void> setReceipFootMesg2(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg2, value);
  }

  @override
  Future<void> setReceipFootMesg3(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg3, value);
  }

  @override
  Future<void> setReceipFootMesg4(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg4, value);
  }

  @override
  Future<void> setReceipFootMesg5(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg5, value);
  }

  @override
  Future<void> setReceipFootMesg6(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg6, value);
  }

  @override
  Future<void> setReceipFootMesg7(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg7, value);
  }

  @override
  Future<void> setReceipFootMesg8(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg8, value);
  }

  @override
  Future<void> setReceipFootMesg9(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg9, value);
  }

  @override
  Future<void> setReceipFootMesg10(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipFootMesg10, value);
  }

  @override
  Future<void> setReceipNoBarcodeFg(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.receipNoBarcodeFg, value);
  }

  @override
  Future<void> setSaleVatType(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.saleVatType, value);
  }

  @override
  Future<void> setAllowSaleOverStock(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.allowSaleOverStock, value);
  }

  @override
  Future<void> setQrcodeAccount(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.qrcodeAccount, value);
  }

  @override
  Future<void> setCashierLevel(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.cashierLevel, value);
  }

  @override
  Future<void> setFuncBillDiscCPDisFix(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcBillDiscCPDisFix, value);
  }

  @override
  Future<void> setFuncConfigShop(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcConfigShop, value);
  }

  @override
  Future<void> setFuncPaymentCash(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcPaymentCash, value);
  }

  @override
  Future<void> setFuncPaymentCashCouponFix(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcPaymentCashCouponFix, value);
  }

  @override
  Future<void> setFuncPaymentCredit(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcPaymentCredit, value);
  }

  @override
  Future<void> setFuncPaymentQr(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcPaymentQr, value);
  }

  @override
  Future<void> setFuncSalePageMember(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageMember, value);
  }

  @override
  Future<void> setFuncSalePageOrderCall(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageOrderCall, value);
  }

  @override
  Future<void> setFuncSalePageOrderSave(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageOrderSave, value);
  }

  @override
  Future<void> setFuncSalePageRefundAll(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageRefundAll, value);
  }

  @override
  Future<void> setFuncSalePageHoldBill(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageHoldBill, value);
  }

  @override
  Future<void> setFuncSalePageRefundCal(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageRefundCal, value);
  }

  @override
  Future<void> setFuncSalePageSaleman(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageSaleman, value);
  }

  @override
  Future<void> setfuncSalePageSearch(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageSearch, value);
  }

  @override
  Future<void> setFuncSalePageVoidAll(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageVoidAll, value);
  }

  @override
  Future<void> setFuncSalePageCPDisFix(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageCPDisFix, value);
  }

  @override
  Future<void> setFuncSalePageChargeBath(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageChargeBath, value);
  }

  @override
  Future<void> setFuncSalePageChargePerc(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcSalePageChargePerc, value);
  }

  @override
  Future<void> setFuncPromoAdvEndBilll(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.funcPromoAdvEndBill, value);
  }

  @override
  Future<void> setStsPromoAdvEndBilll(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.stsPromoAdvEndBill, value);
  }

  @override
  Future<void> setPermitNo(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.permitNo, value);
  }

  @override
  Future<void> setPosTouchPanelId(String value) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString(LocalCacheKey.posTouchPanelId, value);
  }

  @override
  Future<void> clear() async {
    final storage = await SharedPreferences.getInstance();
    await Future.wait([
      storage.remove(LocalCacheKey.posId),
      storage.remove(LocalCacheKey.shopId),
      storage.remove(LocalCacheKey.lastReceiptRunno),
      storage.remove(LocalCacheKey.lastRefundRunno),
      storage.remove(LocalCacheKey.lastRefundRunno),
      storage.remove(LocalCacheKey.autoChargeFg),
      storage.remove(LocalCacheKey.autoChargeRate),
      storage.remove(LocalCacheKey.connectPrinterFg),
      storage.remove(LocalCacheKey.connectEdcFg),
      storage.remove(LocalCacheKey.shopLogoOnReceipt),
      storage.remove(LocalCacheKey.permitNo),
      storage.remove(LocalCacheKey.posTouchPanelId),
      storage.remove(LocalCacheKey.receipHeadMesg1),
      storage.remove(LocalCacheKey.receipHeadMesg2),
      storage.remove(LocalCacheKey.receipHeadMesg3),
      storage.remove(LocalCacheKey.receipHeadMesg4),
      storage.remove(LocalCacheKey.receipHeadMesg5),
      storage.remove(LocalCacheKey.receipHeadMesg6),
      storage.remove(LocalCacheKey.receipFootMesg1),
      storage.remove(LocalCacheKey.receipFootMesg2),
      storage.remove(LocalCacheKey.receipFootMesg3),
      storage.remove(LocalCacheKey.receipFootMesg4),
      storage.remove(LocalCacheKey.receipFootMesg5),
      storage.remove(LocalCacheKey.receipFootMesg6),
      storage.remove(LocalCacheKey.receipFootMesg7),
      storage.remove(LocalCacheKey.receipFootMesg8),
      storage.remove(LocalCacheKey.receipFootMesg9),
      storage.remove(LocalCacheKey.receipFootMesg10),
      storage.remove(LocalCacheKey.receipNoBarcodeFg),
      storage.remove(LocalCacheKey.saleVatType),
      storage.remove(LocalCacheKey.allowSaleOverStock),
      storage.remove(LocalCacheKey.qrcodeAccount),
      storage.remove(LocalCacheKey.cashierLevel),
      storage.remove(LocalCacheKey.funcConfigShop),
      storage.remove(LocalCacheKey.funcSalePageSearch),
      storage.remove(LocalCacheKey.funcSalePageMember),
      storage.remove(LocalCacheKey.funcSalePageSaleman),
      storage.remove(LocalCacheKey.funcSalePageVoidAll),
      storage.remove(LocalCacheKey.funcSalePageRefundCal),
      storage.remove(LocalCacheKey.funcSalePageRefundAll),
      storage.remove(LocalCacheKey.funcSalePageOrderSave),
      storage.remove(LocalCacheKey.funcSalePageOrderCall),
      storage.remove(LocalCacheKey.funcBillDiscCPDisFix),
      storage.remove(LocalCacheKey.funcPaymentCash),
      storage.remove(LocalCacheKey.funcPaymentCredit),
      storage.remove(LocalCacheKey.funcPaymentQr),
      storage.remove(LocalCacheKey.funcPaymentCashCouponFix),
    ]);
  }
}
