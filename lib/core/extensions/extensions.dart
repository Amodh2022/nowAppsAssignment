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
       'prod_image': jsonEncode(prodImage),  // prodImage should be serializable
    'prod_tax': jsonEncode(prodTax),
    };
  }
}
