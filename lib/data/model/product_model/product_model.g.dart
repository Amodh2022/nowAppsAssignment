// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'products': instance.products,
};

_Products _$ProductsFromJson(Map<String, dynamic> json) => _Products(
  prodImage:
      json['prodImage'] == null
          ? null
          : ProdImage.fromJson(json['prodImage'] as Map<String, dynamic>),
  prodId: json['prodId'] as String?,
  prodCode: json['prodCode'] as String?,
  barCode: json['barCode'] as String?,
  prodName: json['prodName'] as String?,
  uOM: json['UOM'] as String?,
  unitId: json['unit_id'] as String?,
  prodCombo: json['prod_combo'] as String?,
  isFocused: json['is_focused'] as String?,
  groupIds: json['group_ids'] as String?,
  categoryIds: json['category_ids'] as String?,
  unitFromValue: json['unit_from_value'] as String?,
  unitToValue: json['unit_to_value'] as String?,
  uomAlternateName: json['uom_alternate_name'] as String?,
  uomAlternateId: json['uom_alternate_id'] as String?,
  altUomFromDecimal: json['alt_uom_from_decimal'] as String?,
  altUomToDecimal: json['alt_uom_to_decimal'] as String?,
  underWarranty: json['under_warranty'] as String?,
  action: json['action'] as String?,
  groupId: json['groupId'] as String?,
  catId: json['catId'] as String?,
  prodHsnId: json['prodHsnId'] as String?,
  prodHsnCode: json['prodHsnCode'] as String?,
  prodShortName: json['prodShortName'] as String?,
  prodPrice: json['prodPrice'] as String?,
  prodMrp: json['prodMrp'] as String?,
  prodBuy: json['prodBuy'] as String?,
  prodSell: json['prodSell'] as String?,
  prodFreeItem: json['prodFreeItem'] as String?,
  prodRkPrice: json['prodRkPrice'] as String?,
  prodTax:
      json['prodTax'] == null
          ? null
          : ProdTax.fromJson(json['prodTax'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductsToJson(_Products instance) => <String, dynamic>{
  'prodImage': instance.prodImage,
  'prodId': instance.prodId,
  'prodCode': instance.prodCode,
  'barCode': instance.barCode,
  'prodName': instance.prodName,
  'UOM': instance.uOM,
  'unit_id': instance.unitId,
  'prod_combo': instance.prodCombo,
  'is_focused': instance.isFocused,
  'group_ids': instance.groupIds,
  'category_ids': instance.categoryIds,
  'unit_from_value': instance.unitFromValue,
  'unit_to_value': instance.unitToValue,
  'uom_alternate_name': instance.uomAlternateName,
  'uom_alternate_id': instance.uomAlternateId,
  'alt_uom_from_decimal': instance.altUomFromDecimal,
  'alt_uom_to_decimal': instance.altUomToDecimal,
  'under_warranty': instance.underWarranty,
  'action': instance.action,
  'groupId': instance.groupId,
  'catId': instance.catId,
  'prodHsnId': instance.prodHsnId,
  'prodHsnCode': instance.prodHsnCode,
  'prodShortName': instance.prodShortName,
  'prodPrice': instance.prodPrice,
  'prodMrp': instance.prodMrp,
  'prodBuy': instance.prodBuy,
  'prodSell': instance.prodSell,
  'prodFreeItem': instance.prodFreeItem,
  'prodRkPrice': instance.prodRkPrice,
  'prodTax': instance.prodTax,
};

_ProdImage _$ProdImageFromJson(Map<String, dynamic> json) => _ProdImage(
  nano: json['nano'] as String?,
  micro: json['micro'] as String?,
  small: json['small'] as String?,
  extraSmall: json['extra_small'] as String?,
  medium: json['medium'] as String?,
  large: json['large'] as String?,
  extraLarge: json['extra_large'] as String?,
  customImage: json['custom_image'] as String?,
);

Map<String, dynamic> _$ProdImageToJson(_ProdImage instance) =>
    <String, dynamic>{
      'nano': instance.nano,
      'micro': instance.micro,
      'small': instance.small,
      'extra_small': instance.extraSmall,
      'medium': instance.medium,
      'large': instance.large,
      'extra_large': instance.extraLarge,
      'custom_image': instance.customImage,
    };

_ProdTax _$ProdTaxFromJson(Map<String, dynamic> json) => _ProdTax(
  iN:
      json['IN'] == null
          ? null
          : IN.fromJson(json['IN'] as Map<String, dynamic>),
  oUT:
      json['OUT'] == null
          ? null
          : IN.fromJson(json['OUT'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProdTaxToJson(_ProdTax instance) => <String, dynamic>{
  'IN': instance.iN,
  'OUT': instance.oUT,
};

_IN _$INFromJson(Map<String, dynamic> json) => _IN(
  iS:
      (json['IS'] as List<dynamic>?)
          ?.map((e) => IS.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$INToJson(_IN instance) => <String, dynamic>{
  'IS': instance.iS,
};

_IS _$ISFromJson(Map<String, dynamic> json) => _IS(
  taxValDate: json['taxVal_date'] as String?,
  taxValCountry: json['taxVal_country'] as String?,
  taxValFromRate: json['taxVal_from_rate'] as String?,
  taxValToRate: json['taxVal_to_rate'] as String?,
  taxValState: json['taxVal_state'] as String?,
  taxValBehav: json['taxVal_behav'] as String?,
  taxValTaxPercentage: json['taxVal_taxPercentage'] as String?,
  taxValExemption: json['taxVal_exemption'] as String?,
  taxValOwnId: json['taxVal_OwnId'] as String?,
  taxName: json['tax_name'] as String?,
  taxPercent: json['tax_percent'] as String?,
  gstType: json['gst_type'] as String?,
  taxId: json['tax_id'] as String?,
  taxParent: json['tax_parent'] as String?,
  taxApplyOn: json['tax_apply_on'] as String?,
);

Map<String, dynamic> _$ISToJson(_IS instance) => <String, dynamic>{
  'taxVal_date': instance.taxValDate,
  'taxVal_country': instance.taxValCountry,
  'taxVal_from_rate': instance.taxValFromRate,
  'taxVal_to_rate': instance.taxValToRate,
  'taxVal_state': instance.taxValState,
  'taxVal_behav': instance.taxValBehav,
  'taxVal_taxPercentage': instance.taxValTaxPercentage,
  'taxVal_exemption': instance.taxValExemption,
  'taxVal_OwnId': instance.taxValOwnId,
  'tax_name': instance.taxName,
  'tax_percent': instance.taxPercent,
  'gst_type': instance.gstType,
  'tax_id': instance.taxId,
  'tax_parent': instance.taxParent,
  'tax_apply_on': instance.taxApplyOn,
};
