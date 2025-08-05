import 'dart:convert';

import 'package:myapp/data/model/product_model/product_model.dart';

extension ProductsExtension on Products {
  Map<String, dynamic> toMap() {
    return {
      'prod_id': prodId,
      'prod_code': prodCode,
      'bar_code': barCode,
      'prod_name': prodName,
      'uom': uOM,
      'unit_id': unitId,
      'prod_combo': prodCombo,
      'is_focused': isFocused,
      'group_ids': groupIds,
      'category_ids': categoryIds,
      'unit_from_value': unitFromValue,
      'unit_to_value': unitToValue,
      'uom_alternate_name': uomAlternateName,
      'uom_alternate_id': uomAlternateId,
      'alt_uom_from_decimal': altUomFromDecimal,
      'alt_uom_to_decimal': altUomToDecimal,
      'under_warranty': underWarranty,
      'action': action,
      'group_id': groupId,
      'cat_id': catId,
      'prod_hsn_id': prodHsnId,
      'prod_hsn_code': prodHsnCode,
      'prod_short_name': prodShortName,
      'prod_price': prodPrice,
      'prod_mrp': prodMrp,
      'prod_buy': prodBuy,
      'prod_sell': prodSell,
      'prod_free_item': prodFreeItem,
      'prod_rk_price': prodRkPrice,
      'prod_image': jsonEncode(prodImage),
    'prod_tax': jsonEncode(prodTax),
    };
  }
  static Products fromMap(Map<String, dynamic> map) {
    return Products(
      prodId: map['prod_id'],
      prodCode: map['prod_code'],
      barCode: map['bar_code'],
      prodName: map['prod_name'],
      uOM: map['uom'],
      unitId: map['unit_id'],
      prodCombo: map['prod_combo'],
      isFocused: map['is_focused'],
      groupIds: map['group_ids'],
      categoryIds: map['category_ids'],
      unitFromValue: map['unit_from_value'],
      unitToValue: map['unit_to_value'],
      uomAlternateName: map['uom_alternate_name'],
      uomAlternateId: map['uom_alternate_id'],
      altUomFromDecimal: map['alt_uom_from_decimal'],
      altUomToDecimal: map['alt_uom_to_decimal'],
      underWarranty: map['under_warranty'],
      action: map['action'],
      groupId: map['group_id'],
      catId: map['cat_id'],
      prodHsnId: map['prod_hsn_id'],
      prodHsnCode: map['prod_hsn_code'],
      prodShortName: map['prod_short_name'],
      prodPrice: map['prod_price'],
      prodMrp: map['prod_mrp'],
      prodBuy: map['prod_buy'],
      prodSell: map['prod_sell'],
      prodFreeItem: map['prod_free_item'],
      prodRkPrice: map['prod_rk_price'],
      prodImage: map['prod_image'] != null
          ? ProdImage.fromJson(jsonDecode(map['prod_image']))
          : null,
      prodTax: map['prod_tax'] != null
          ? ProdTax.fromJson(jsonDecode(map['prod_tax']))
          : null,
    );
  }

}


