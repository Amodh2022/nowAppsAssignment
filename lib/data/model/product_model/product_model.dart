import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    bool? status,
    String? message,
    Data? data,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    List<Products>? products,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Products with _$Products {
  const factory Products({
    ProdImage? prodImage,
    String? prodId,
    String? prodCode,
    String? barCode,
    String? prodName,
    @JsonKey(name: 'UOM') String? uOM,
    @JsonKey(name: 'unit_id') String? unitId,
    @JsonKey(name: 'prod_combo') String? prodCombo,
    @JsonKey(name: 'is_focused') String? isFocused,
    @JsonKey(name: 'group_ids') String? groupIds,
    @JsonKey(name: 'category_ids') String? categoryIds,
    @JsonKey(name: 'unit_from_value') String? unitFromValue,
    @JsonKey(name: 'unit_to_value') String? unitToValue,
    @JsonKey(name: 'uom_alternate_name') String? uomAlternateName,
    @JsonKey(name: 'uom_alternate_id') String? uomAlternateId,
    @JsonKey(name: 'alt_uom_from_decimal') String? altUomFromDecimal,
    @JsonKey(name: 'alt_uom_to_decimal') String? altUomToDecimal,
    @JsonKey(name: 'under_warranty') String? underWarranty,
    String? action,
    String? groupId,
    String? catId,
    String? prodHsnId,
    String? prodHsnCode,
    String? prodShortName,
    String? prodPrice,
    String? prodMrp,
    String? prodBuy,
    String? prodSell,
    String? prodFreeItem,
    String? prodRkPrice,
    ProdTax? prodTax,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
abstract class ProdImage with _$ProdImage {
  const factory ProdImage({
    String? nano,
    String? micro,
    String? small,
    @JsonKey(name: 'extra_small') String? extraSmall,
    String? medium,
    String? large,
    @JsonKey(name: 'extra_large') String? extraLarge,
    @JsonKey(name: 'custom_image') String? customImage,
  }) = _ProdImage;

  factory ProdImage.fromJson(Map<String, dynamic> json) =>
      _$ProdImageFromJson(json);
}

@freezed
abstract class ProdTax with _$ProdTax {
  const factory ProdTax({
    @JsonKey(name: 'IN') IN? iN,
    @JsonKey(name: 'OUT') IN? oUT,
  }) = _ProdTax;

  factory ProdTax.fromJson(Map<String, dynamic> json) =>
      _$ProdTaxFromJson(json);
}

@freezed
abstract class IN with _$IN {
  const factory IN({
    @JsonKey(name: 'IS') List<IS>? iS,
  }) = _IN;

  factory IN.fromJson(Map<String, dynamic> json) => _$INFromJson(json);
}

@freezed
abstract class IS with _$IS {
  const factory IS({
    @JsonKey(name: 'taxVal_date') String? taxValDate,
    @JsonKey(name: 'taxVal_country') String? taxValCountry,
    @JsonKey(name: 'taxVal_from_rate') String? taxValFromRate,
    @JsonKey(name: 'taxVal_to_rate') String? taxValToRate,
    @JsonKey(name: 'taxVal_state') String? taxValState,
    @JsonKey(name: 'taxVal_behav') String? taxValBehav,
    @JsonKey(name: 'taxVal_taxPercentage') String? taxValTaxPercentage,
    @JsonKey(name: 'taxVal_exemption') String? taxValExemption,
    @JsonKey(name: 'taxVal_OwnId') String? taxValOwnId,
    @JsonKey(name: 'tax_name') String? taxName,
    @JsonKey(name: 'tax_percent') String? taxPercent,
    @JsonKey(name: 'gst_type') String? gstType,
    @JsonKey(name: 'tax_id') String? taxId,
    @JsonKey(name: 'tax_parent') String? taxParent,
    @JsonKey(name: 'tax_apply_on') String? taxApplyOn,
  }) = _IS;

  factory IS.fromJson(Map<String, dynamic> json) => _$ISFromJson(json);
}


