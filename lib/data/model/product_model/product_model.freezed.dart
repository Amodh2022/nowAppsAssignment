// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 bool? get status; String? get message; Data? get data;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'Product(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? status,  String? message,  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? status,  String? message,  Data? data)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.status,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? status,  String? message,  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({this.status, this.message, this.data});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  bool? status;
@override final  String? message;
@override final  Data? data;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'Product(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_Product(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

 List<Products>? get products;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'Data(products: $products)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 List<Products>? products
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Products>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Products>? products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Products>? products)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.products);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Products>? products)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({final  List<Products>? products}): _products = products;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<Products>? _products;
@override List<Products>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'Data(products: $products)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 List<Products>? products
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,}) {
  return _then(_Data(
products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Products>?,
  ));
}


}


/// @nodoc
mixin _$Products {

 ProdImage? get prodImage; String? get prodId; String? get prodCode; String? get barCode; String? get prodName;@JsonKey(name: 'UOM') String? get uOM;@JsonKey(name: 'unit_id') String? get unitId;@JsonKey(name: 'prod_combo') String? get prodCombo;@JsonKey(name: 'is_focused') String? get isFocused;@JsonKey(name: 'group_ids') String? get groupIds;@JsonKey(name: 'category_ids') String? get categoryIds;@JsonKey(name: 'unit_from_value') String? get unitFromValue;@JsonKey(name: 'unit_to_value') String? get unitToValue;@JsonKey(name: 'uom_alternate_name') String? get uomAlternateName;@JsonKey(name: 'uom_alternate_id') String? get uomAlternateId;@JsonKey(name: 'alt_uom_from_decimal') String? get altUomFromDecimal;@JsonKey(name: 'alt_uom_to_decimal') String? get altUomToDecimal;@JsonKey(name: 'under_warranty') String? get underWarranty; String? get action; String? get groupId; String? get catId; String? get prodHsnId; String? get prodHsnCode; String? get prodShortName; String? get prodPrice; String? get prodMrp; String? get prodBuy; String? get prodSell; String? get prodFreeItem; String? get prodRkPrice; ProdTax? get prodTax;
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsCopyWith<Products> get copyWith => _$ProductsCopyWithImpl<Products>(this as Products, _$identity);

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Products&&(identical(other.prodImage, prodImage) || other.prodImage == prodImage)&&(identical(other.prodId, prodId) || other.prodId == prodId)&&(identical(other.prodCode, prodCode) || other.prodCode == prodCode)&&(identical(other.barCode, barCode) || other.barCode == barCode)&&(identical(other.prodName, prodName) || other.prodName == prodName)&&(identical(other.uOM, uOM) || other.uOM == uOM)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.prodCombo, prodCombo) || other.prodCombo == prodCombo)&&(identical(other.isFocused, isFocused) || other.isFocused == isFocused)&&(identical(other.groupIds, groupIds) || other.groupIds == groupIds)&&(identical(other.categoryIds, categoryIds) || other.categoryIds == categoryIds)&&(identical(other.unitFromValue, unitFromValue) || other.unitFromValue == unitFromValue)&&(identical(other.unitToValue, unitToValue) || other.unitToValue == unitToValue)&&(identical(other.uomAlternateName, uomAlternateName) || other.uomAlternateName == uomAlternateName)&&(identical(other.uomAlternateId, uomAlternateId) || other.uomAlternateId == uomAlternateId)&&(identical(other.altUomFromDecimal, altUomFromDecimal) || other.altUomFromDecimal == altUomFromDecimal)&&(identical(other.altUomToDecimal, altUomToDecimal) || other.altUomToDecimal == altUomToDecimal)&&(identical(other.underWarranty, underWarranty) || other.underWarranty == underWarranty)&&(identical(other.action, action) || other.action == action)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.prodHsnId, prodHsnId) || other.prodHsnId == prodHsnId)&&(identical(other.prodHsnCode, prodHsnCode) || other.prodHsnCode == prodHsnCode)&&(identical(other.prodShortName, prodShortName) || other.prodShortName == prodShortName)&&(identical(other.prodPrice, prodPrice) || other.prodPrice == prodPrice)&&(identical(other.prodMrp, prodMrp) || other.prodMrp == prodMrp)&&(identical(other.prodBuy, prodBuy) || other.prodBuy == prodBuy)&&(identical(other.prodSell, prodSell) || other.prodSell == prodSell)&&(identical(other.prodFreeItem, prodFreeItem) || other.prodFreeItem == prodFreeItem)&&(identical(other.prodRkPrice, prodRkPrice) || other.prodRkPrice == prodRkPrice)&&(identical(other.prodTax, prodTax) || other.prodTax == prodTax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,prodImage,prodId,prodCode,barCode,prodName,uOM,unitId,prodCombo,isFocused,groupIds,categoryIds,unitFromValue,unitToValue,uomAlternateName,uomAlternateId,altUomFromDecimal,altUomToDecimal,underWarranty,action,groupId,catId,prodHsnId,prodHsnCode,prodShortName,prodPrice,prodMrp,prodBuy,prodSell,prodFreeItem,prodRkPrice,prodTax]);

@override
String toString() {
  return 'Products(prodImage: $prodImage, prodId: $prodId, prodCode: $prodCode, barCode: $barCode, prodName: $prodName, uOM: $uOM, unitId: $unitId, prodCombo: $prodCombo, isFocused: $isFocused, groupIds: $groupIds, categoryIds: $categoryIds, unitFromValue: $unitFromValue, unitToValue: $unitToValue, uomAlternateName: $uomAlternateName, uomAlternateId: $uomAlternateId, altUomFromDecimal: $altUomFromDecimal, altUomToDecimal: $altUomToDecimal, underWarranty: $underWarranty, action: $action, groupId: $groupId, catId: $catId, prodHsnId: $prodHsnId, prodHsnCode: $prodHsnCode, prodShortName: $prodShortName, prodPrice: $prodPrice, prodMrp: $prodMrp, prodBuy: $prodBuy, prodSell: $prodSell, prodFreeItem: $prodFreeItem, prodRkPrice: $prodRkPrice, prodTax: $prodTax)';
}


}

/// @nodoc
abstract mixin class $ProductsCopyWith<$Res>  {
  factory $ProductsCopyWith(Products value, $Res Function(Products) _then) = _$ProductsCopyWithImpl;
@useResult
$Res call({
 ProdImage? prodImage, String? prodId, String? prodCode, String? barCode, String? prodName,@JsonKey(name: 'UOM') String? uOM,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'prod_combo') String? prodCombo,@JsonKey(name: 'is_focused') String? isFocused,@JsonKey(name: 'group_ids') String? groupIds,@JsonKey(name: 'category_ids') String? categoryIds,@JsonKey(name: 'unit_from_value') String? unitFromValue,@JsonKey(name: 'unit_to_value') String? unitToValue,@JsonKey(name: 'uom_alternate_name') String? uomAlternateName,@JsonKey(name: 'uom_alternate_id') String? uomAlternateId,@JsonKey(name: 'alt_uom_from_decimal') String? altUomFromDecimal,@JsonKey(name: 'alt_uom_to_decimal') String? altUomToDecimal,@JsonKey(name: 'under_warranty') String? underWarranty, String? action, String? groupId, String? catId, String? prodHsnId, String? prodHsnCode, String? prodShortName, String? prodPrice, String? prodMrp, String? prodBuy, String? prodSell, String? prodFreeItem, String? prodRkPrice, ProdTax? prodTax
});


$ProdImageCopyWith<$Res>? get prodImage;$ProdTaxCopyWith<$Res>? get prodTax;

}
/// @nodoc
class _$ProductsCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._self, this._then);

  final Products _self;
  final $Res Function(Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prodImage = freezed,Object? prodId = freezed,Object? prodCode = freezed,Object? barCode = freezed,Object? prodName = freezed,Object? uOM = freezed,Object? unitId = freezed,Object? prodCombo = freezed,Object? isFocused = freezed,Object? groupIds = freezed,Object? categoryIds = freezed,Object? unitFromValue = freezed,Object? unitToValue = freezed,Object? uomAlternateName = freezed,Object? uomAlternateId = freezed,Object? altUomFromDecimal = freezed,Object? altUomToDecimal = freezed,Object? underWarranty = freezed,Object? action = freezed,Object? groupId = freezed,Object? catId = freezed,Object? prodHsnId = freezed,Object? prodHsnCode = freezed,Object? prodShortName = freezed,Object? prodPrice = freezed,Object? prodMrp = freezed,Object? prodBuy = freezed,Object? prodSell = freezed,Object? prodFreeItem = freezed,Object? prodRkPrice = freezed,Object? prodTax = freezed,}) {
  return _then(_self.copyWith(
prodImage: freezed == prodImage ? _self.prodImage : prodImage // ignore: cast_nullable_to_non_nullable
as ProdImage?,prodId: freezed == prodId ? _self.prodId : prodId // ignore: cast_nullable_to_non_nullable
as String?,prodCode: freezed == prodCode ? _self.prodCode : prodCode // ignore: cast_nullable_to_non_nullable
as String?,barCode: freezed == barCode ? _self.barCode : barCode // ignore: cast_nullable_to_non_nullable
as String?,prodName: freezed == prodName ? _self.prodName : prodName // ignore: cast_nullable_to_non_nullable
as String?,uOM: freezed == uOM ? _self.uOM : uOM // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,prodCombo: freezed == prodCombo ? _self.prodCombo : prodCombo // ignore: cast_nullable_to_non_nullable
as String?,isFocused: freezed == isFocused ? _self.isFocused : isFocused // ignore: cast_nullable_to_non_nullable
as String?,groupIds: freezed == groupIds ? _self.groupIds : groupIds // ignore: cast_nullable_to_non_nullable
as String?,categoryIds: freezed == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as String?,unitFromValue: freezed == unitFromValue ? _self.unitFromValue : unitFromValue // ignore: cast_nullable_to_non_nullable
as String?,unitToValue: freezed == unitToValue ? _self.unitToValue : unitToValue // ignore: cast_nullable_to_non_nullable
as String?,uomAlternateName: freezed == uomAlternateName ? _self.uomAlternateName : uomAlternateName // ignore: cast_nullable_to_non_nullable
as String?,uomAlternateId: freezed == uomAlternateId ? _self.uomAlternateId : uomAlternateId // ignore: cast_nullable_to_non_nullable
as String?,altUomFromDecimal: freezed == altUomFromDecimal ? _self.altUomFromDecimal : altUomFromDecimal // ignore: cast_nullable_to_non_nullable
as String?,altUomToDecimal: freezed == altUomToDecimal ? _self.altUomToDecimal : altUomToDecimal // ignore: cast_nullable_to_non_nullable
as String?,underWarranty: freezed == underWarranty ? _self.underWarranty : underWarranty // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as String?,prodHsnId: freezed == prodHsnId ? _self.prodHsnId : prodHsnId // ignore: cast_nullable_to_non_nullable
as String?,prodHsnCode: freezed == prodHsnCode ? _self.prodHsnCode : prodHsnCode // ignore: cast_nullable_to_non_nullable
as String?,prodShortName: freezed == prodShortName ? _self.prodShortName : prodShortName // ignore: cast_nullable_to_non_nullable
as String?,prodPrice: freezed == prodPrice ? _self.prodPrice : prodPrice // ignore: cast_nullable_to_non_nullable
as String?,prodMrp: freezed == prodMrp ? _self.prodMrp : prodMrp // ignore: cast_nullable_to_non_nullable
as String?,prodBuy: freezed == prodBuy ? _self.prodBuy : prodBuy // ignore: cast_nullable_to_non_nullable
as String?,prodSell: freezed == prodSell ? _self.prodSell : prodSell // ignore: cast_nullable_to_non_nullable
as String?,prodFreeItem: freezed == prodFreeItem ? _self.prodFreeItem : prodFreeItem // ignore: cast_nullable_to_non_nullable
as String?,prodRkPrice: freezed == prodRkPrice ? _self.prodRkPrice : prodRkPrice // ignore: cast_nullable_to_non_nullable
as String?,prodTax: freezed == prodTax ? _self.prodTax : prodTax // ignore: cast_nullable_to_non_nullable
as ProdTax?,
  ));
}
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdImageCopyWith<$Res>? get prodImage {
    if (_self.prodImage == null) {
    return null;
  }

  return $ProdImageCopyWith<$Res>(_self.prodImage!, (value) {
    return _then(_self.copyWith(prodImage: value));
  });
}/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdTaxCopyWith<$Res>? get prodTax {
    if (_self.prodTax == null) {
    return null;
  }

  return $ProdTaxCopyWith<$Res>(_self.prodTax!, (value) {
    return _then(_self.copyWith(prodTax: value));
  });
}
}


/// Adds pattern-matching-related methods to [Products].
extension ProductsPatterns on Products {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Products value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Products value)  $default,){
final _that = this;
switch (_that) {
case _Products():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Products value)?  $default,){
final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProdImage? prodImage,  String? prodId,  String? prodCode,  String? barCode,  String? prodName, @JsonKey(name: 'UOM')  String? uOM, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'prod_combo')  String? prodCombo, @JsonKey(name: 'is_focused')  String? isFocused, @JsonKey(name: 'group_ids')  String? groupIds, @JsonKey(name: 'category_ids')  String? categoryIds, @JsonKey(name: 'unit_from_value')  String? unitFromValue, @JsonKey(name: 'unit_to_value')  String? unitToValue, @JsonKey(name: 'uom_alternate_name')  String? uomAlternateName, @JsonKey(name: 'uom_alternate_id')  String? uomAlternateId, @JsonKey(name: 'alt_uom_from_decimal')  String? altUomFromDecimal, @JsonKey(name: 'alt_uom_to_decimal')  String? altUomToDecimal, @JsonKey(name: 'under_warranty')  String? underWarranty,  String? action,  String? groupId,  String? catId,  String? prodHsnId,  String? prodHsnCode,  String? prodShortName,  String? prodPrice,  String? prodMrp,  String? prodBuy,  String? prodSell,  String? prodFreeItem,  String? prodRkPrice,  ProdTax? prodTax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.prodImage,_that.prodId,_that.prodCode,_that.barCode,_that.prodName,_that.uOM,_that.unitId,_that.prodCombo,_that.isFocused,_that.groupIds,_that.categoryIds,_that.unitFromValue,_that.unitToValue,_that.uomAlternateName,_that.uomAlternateId,_that.altUomFromDecimal,_that.altUomToDecimal,_that.underWarranty,_that.action,_that.groupId,_that.catId,_that.prodHsnId,_that.prodHsnCode,_that.prodShortName,_that.prodPrice,_that.prodMrp,_that.prodBuy,_that.prodSell,_that.prodFreeItem,_that.prodRkPrice,_that.prodTax);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProdImage? prodImage,  String? prodId,  String? prodCode,  String? barCode,  String? prodName, @JsonKey(name: 'UOM')  String? uOM, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'prod_combo')  String? prodCombo, @JsonKey(name: 'is_focused')  String? isFocused, @JsonKey(name: 'group_ids')  String? groupIds, @JsonKey(name: 'category_ids')  String? categoryIds, @JsonKey(name: 'unit_from_value')  String? unitFromValue, @JsonKey(name: 'unit_to_value')  String? unitToValue, @JsonKey(name: 'uom_alternate_name')  String? uomAlternateName, @JsonKey(name: 'uom_alternate_id')  String? uomAlternateId, @JsonKey(name: 'alt_uom_from_decimal')  String? altUomFromDecimal, @JsonKey(name: 'alt_uom_to_decimal')  String? altUomToDecimal, @JsonKey(name: 'under_warranty')  String? underWarranty,  String? action,  String? groupId,  String? catId,  String? prodHsnId,  String? prodHsnCode,  String? prodShortName,  String? prodPrice,  String? prodMrp,  String? prodBuy,  String? prodSell,  String? prodFreeItem,  String? prodRkPrice,  ProdTax? prodTax)  $default,) {final _that = this;
switch (_that) {
case _Products():
return $default(_that.prodImage,_that.prodId,_that.prodCode,_that.barCode,_that.prodName,_that.uOM,_that.unitId,_that.prodCombo,_that.isFocused,_that.groupIds,_that.categoryIds,_that.unitFromValue,_that.unitToValue,_that.uomAlternateName,_that.uomAlternateId,_that.altUomFromDecimal,_that.altUomToDecimal,_that.underWarranty,_that.action,_that.groupId,_that.catId,_that.prodHsnId,_that.prodHsnCode,_that.prodShortName,_that.prodPrice,_that.prodMrp,_that.prodBuy,_that.prodSell,_that.prodFreeItem,_that.prodRkPrice,_that.prodTax);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProdImage? prodImage,  String? prodId,  String? prodCode,  String? barCode,  String? prodName, @JsonKey(name: 'UOM')  String? uOM, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'prod_combo')  String? prodCombo, @JsonKey(name: 'is_focused')  String? isFocused, @JsonKey(name: 'group_ids')  String? groupIds, @JsonKey(name: 'category_ids')  String? categoryIds, @JsonKey(name: 'unit_from_value')  String? unitFromValue, @JsonKey(name: 'unit_to_value')  String? unitToValue, @JsonKey(name: 'uom_alternate_name')  String? uomAlternateName, @JsonKey(name: 'uom_alternate_id')  String? uomAlternateId, @JsonKey(name: 'alt_uom_from_decimal')  String? altUomFromDecimal, @JsonKey(name: 'alt_uom_to_decimal')  String? altUomToDecimal, @JsonKey(name: 'under_warranty')  String? underWarranty,  String? action,  String? groupId,  String? catId,  String? prodHsnId,  String? prodHsnCode,  String? prodShortName,  String? prodPrice,  String? prodMrp,  String? prodBuy,  String? prodSell,  String? prodFreeItem,  String? prodRkPrice,  ProdTax? prodTax)?  $default,) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.prodImage,_that.prodId,_that.prodCode,_that.barCode,_that.prodName,_that.uOM,_that.unitId,_that.prodCombo,_that.isFocused,_that.groupIds,_that.categoryIds,_that.unitFromValue,_that.unitToValue,_that.uomAlternateName,_that.uomAlternateId,_that.altUomFromDecimal,_that.altUomToDecimal,_that.underWarranty,_that.action,_that.groupId,_that.catId,_that.prodHsnId,_that.prodHsnCode,_that.prodShortName,_that.prodPrice,_that.prodMrp,_that.prodBuy,_that.prodSell,_that.prodFreeItem,_that.prodRkPrice,_that.prodTax);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Products implements Products {
  const _Products({this.prodImage, this.prodId, this.prodCode, this.barCode, this.prodName, @JsonKey(name: 'UOM') this.uOM, @JsonKey(name: 'unit_id') this.unitId, @JsonKey(name: 'prod_combo') this.prodCombo, @JsonKey(name: 'is_focused') this.isFocused, @JsonKey(name: 'group_ids') this.groupIds, @JsonKey(name: 'category_ids') this.categoryIds, @JsonKey(name: 'unit_from_value') this.unitFromValue, @JsonKey(name: 'unit_to_value') this.unitToValue, @JsonKey(name: 'uom_alternate_name') this.uomAlternateName, @JsonKey(name: 'uom_alternate_id') this.uomAlternateId, @JsonKey(name: 'alt_uom_from_decimal') this.altUomFromDecimal, @JsonKey(name: 'alt_uom_to_decimal') this.altUomToDecimal, @JsonKey(name: 'under_warranty') this.underWarranty, this.action, this.groupId, this.catId, this.prodHsnId, this.prodHsnCode, this.prodShortName, this.prodPrice, this.prodMrp, this.prodBuy, this.prodSell, this.prodFreeItem, this.prodRkPrice, this.prodTax});
  factory _Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);

@override final  ProdImage? prodImage;
@override final  String? prodId;
@override final  String? prodCode;
@override final  String? barCode;
@override final  String? prodName;
@override@JsonKey(name: 'UOM') final  String? uOM;
@override@JsonKey(name: 'unit_id') final  String? unitId;
@override@JsonKey(name: 'prod_combo') final  String? prodCombo;
@override@JsonKey(name: 'is_focused') final  String? isFocused;
@override@JsonKey(name: 'group_ids') final  String? groupIds;
@override@JsonKey(name: 'category_ids') final  String? categoryIds;
@override@JsonKey(name: 'unit_from_value') final  String? unitFromValue;
@override@JsonKey(name: 'unit_to_value') final  String? unitToValue;
@override@JsonKey(name: 'uom_alternate_name') final  String? uomAlternateName;
@override@JsonKey(name: 'uom_alternate_id') final  String? uomAlternateId;
@override@JsonKey(name: 'alt_uom_from_decimal') final  String? altUomFromDecimal;
@override@JsonKey(name: 'alt_uom_to_decimal') final  String? altUomToDecimal;
@override@JsonKey(name: 'under_warranty') final  String? underWarranty;
@override final  String? action;
@override final  String? groupId;
@override final  String? catId;
@override final  String? prodHsnId;
@override final  String? prodHsnCode;
@override final  String? prodShortName;
@override final  String? prodPrice;
@override final  String? prodMrp;
@override final  String? prodBuy;
@override final  String? prodSell;
@override final  String? prodFreeItem;
@override final  String? prodRkPrice;
@override final  ProdTax? prodTax;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsCopyWith<_Products> get copyWith => __$ProductsCopyWithImpl<_Products>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Products&&(identical(other.prodImage, prodImage) || other.prodImage == prodImage)&&(identical(other.prodId, prodId) || other.prodId == prodId)&&(identical(other.prodCode, prodCode) || other.prodCode == prodCode)&&(identical(other.barCode, barCode) || other.barCode == barCode)&&(identical(other.prodName, prodName) || other.prodName == prodName)&&(identical(other.uOM, uOM) || other.uOM == uOM)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.prodCombo, prodCombo) || other.prodCombo == prodCombo)&&(identical(other.isFocused, isFocused) || other.isFocused == isFocused)&&(identical(other.groupIds, groupIds) || other.groupIds == groupIds)&&(identical(other.categoryIds, categoryIds) || other.categoryIds == categoryIds)&&(identical(other.unitFromValue, unitFromValue) || other.unitFromValue == unitFromValue)&&(identical(other.unitToValue, unitToValue) || other.unitToValue == unitToValue)&&(identical(other.uomAlternateName, uomAlternateName) || other.uomAlternateName == uomAlternateName)&&(identical(other.uomAlternateId, uomAlternateId) || other.uomAlternateId == uomAlternateId)&&(identical(other.altUomFromDecimal, altUomFromDecimal) || other.altUomFromDecimal == altUomFromDecimal)&&(identical(other.altUomToDecimal, altUomToDecimal) || other.altUomToDecimal == altUomToDecimal)&&(identical(other.underWarranty, underWarranty) || other.underWarranty == underWarranty)&&(identical(other.action, action) || other.action == action)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.catId, catId) || other.catId == catId)&&(identical(other.prodHsnId, prodHsnId) || other.prodHsnId == prodHsnId)&&(identical(other.prodHsnCode, prodHsnCode) || other.prodHsnCode == prodHsnCode)&&(identical(other.prodShortName, prodShortName) || other.prodShortName == prodShortName)&&(identical(other.prodPrice, prodPrice) || other.prodPrice == prodPrice)&&(identical(other.prodMrp, prodMrp) || other.prodMrp == prodMrp)&&(identical(other.prodBuy, prodBuy) || other.prodBuy == prodBuy)&&(identical(other.prodSell, prodSell) || other.prodSell == prodSell)&&(identical(other.prodFreeItem, prodFreeItem) || other.prodFreeItem == prodFreeItem)&&(identical(other.prodRkPrice, prodRkPrice) || other.prodRkPrice == prodRkPrice)&&(identical(other.prodTax, prodTax) || other.prodTax == prodTax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,prodImage,prodId,prodCode,barCode,prodName,uOM,unitId,prodCombo,isFocused,groupIds,categoryIds,unitFromValue,unitToValue,uomAlternateName,uomAlternateId,altUomFromDecimal,altUomToDecimal,underWarranty,action,groupId,catId,prodHsnId,prodHsnCode,prodShortName,prodPrice,prodMrp,prodBuy,prodSell,prodFreeItem,prodRkPrice,prodTax]);

@override
String toString() {
  return 'Products(prodImage: $prodImage, prodId: $prodId, prodCode: $prodCode, barCode: $barCode, prodName: $prodName, uOM: $uOM, unitId: $unitId, prodCombo: $prodCombo, isFocused: $isFocused, groupIds: $groupIds, categoryIds: $categoryIds, unitFromValue: $unitFromValue, unitToValue: $unitToValue, uomAlternateName: $uomAlternateName, uomAlternateId: $uomAlternateId, altUomFromDecimal: $altUomFromDecimal, altUomToDecimal: $altUomToDecimal, underWarranty: $underWarranty, action: $action, groupId: $groupId, catId: $catId, prodHsnId: $prodHsnId, prodHsnCode: $prodHsnCode, prodShortName: $prodShortName, prodPrice: $prodPrice, prodMrp: $prodMrp, prodBuy: $prodBuy, prodSell: $prodSell, prodFreeItem: $prodFreeItem, prodRkPrice: $prodRkPrice, prodTax: $prodTax)';
}


}

/// @nodoc
abstract mixin class _$ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$ProductsCopyWith(_Products value, $Res Function(_Products) _then) = __$ProductsCopyWithImpl;
@override @useResult
$Res call({
 ProdImage? prodImage, String? prodId, String? prodCode, String? barCode, String? prodName,@JsonKey(name: 'UOM') String? uOM,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'prod_combo') String? prodCombo,@JsonKey(name: 'is_focused') String? isFocused,@JsonKey(name: 'group_ids') String? groupIds,@JsonKey(name: 'category_ids') String? categoryIds,@JsonKey(name: 'unit_from_value') String? unitFromValue,@JsonKey(name: 'unit_to_value') String? unitToValue,@JsonKey(name: 'uom_alternate_name') String? uomAlternateName,@JsonKey(name: 'uom_alternate_id') String? uomAlternateId,@JsonKey(name: 'alt_uom_from_decimal') String? altUomFromDecimal,@JsonKey(name: 'alt_uom_to_decimal') String? altUomToDecimal,@JsonKey(name: 'under_warranty') String? underWarranty, String? action, String? groupId, String? catId, String? prodHsnId, String? prodHsnCode, String? prodShortName, String? prodPrice, String? prodMrp, String? prodBuy, String? prodSell, String? prodFreeItem, String? prodRkPrice, ProdTax? prodTax
});


@override $ProdImageCopyWith<$Res>? get prodImage;@override $ProdTaxCopyWith<$Res>? get prodTax;

}
/// @nodoc
class __$ProductsCopyWithImpl<$Res>
    implements _$ProductsCopyWith<$Res> {
  __$ProductsCopyWithImpl(this._self, this._then);

  final _Products _self;
  final $Res Function(_Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prodImage = freezed,Object? prodId = freezed,Object? prodCode = freezed,Object? barCode = freezed,Object? prodName = freezed,Object? uOM = freezed,Object? unitId = freezed,Object? prodCombo = freezed,Object? isFocused = freezed,Object? groupIds = freezed,Object? categoryIds = freezed,Object? unitFromValue = freezed,Object? unitToValue = freezed,Object? uomAlternateName = freezed,Object? uomAlternateId = freezed,Object? altUomFromDecimal = freezed,Object? altUomToDecimal = freezed,Object? underWarranty = freezed,Object? action = freezed,Object? groupId = freezed,Object? catId = freezed,Object? prodHsnId = freezed,Object? prodHsnCode = freezed,Object? prodShortName = freezed,Object? prodPrice = freezed,Object? prodMrp = freezed,Object? prodBuy = freezed,Object? prodSell = freezed,Object? prodFreeItem = freezed,Object? prodRkPrice = freezed,Object? prodTax = freezed,}) {
  return _then(_Products(
prodImage: freezed == prodImage ? _self.prodImage : prodImage // ignore: cast_nullable_to_non_nullable
as ProdImage?,prodId: freezed == prodId ? _self.prodId : prodId // ignore: cast_nullable_to_non_nullable
as String?,prodCode: freezed == prodCode ? _self.prodCode : prodCode // ignore: cast_nullable_to_non_nullable
as String?,barCode: freezed == barCode ? _self.barCode : barCode // ignore: cast_nullable_to_non_nullable
as String?,prodName: freezed == prodName ? _self.prodName : prodName // ignore: cast_nullable_to_non_nullable
as String?,uOM: freezed == uOM ? _self.uOM : uOM // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,prodCombo: freezed == prodCombo ? _self.prodCombo : prodCombo // ignore: cast_nullable_to_non_nullable
as String?,isFocused: freezed == isFocused ? _self.isFocused : isFocused // ignore: cast_nullable_to_non_nullable
as String?,groupIds: freezed == groupIds ? _self.groupIds : groupIds // ignore: cast_nullable_to_non_nullable
as String?,categoryIds: freezed == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as String?,unitFromValue: freezed == unitFromValue ? _self.unitFromValue : unitFromValue // ignore: cast_nullable_to_non_nullable
as String?,unitToValue: freezed == unitToValue ? _self.unitToValue : unitToValue // ignore: cast_nullable_to_non_nullable
as String?,uomAlternateName: freezed == uomAlternateName ? _self.uomAlternateName : uomAlternateName // ignore: cast_nullable_to_non_nullable
as String?,uomAlternateId: freezed == uomAlternateId ? _self.uomAlternateId : uomAlternateId // ignore: cast_nullable_to_non_nullable
as String?,altUomFromDecimal: freezed == altUomFromDecimal ? _self.altUomFromDecimal : altUomFromDecimal // ignore: cast_nullable_to_non_nullable
as String?,altUomToDecimal: freezed == altUomToDecimal ? _self.altUomToDecimal : altUomToDecimal // ignore: cast_nullable_to_non_nullable
as String?,underWarranty: freezed == underWarranty ? _self.underWarranty : underWarranty // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,catId: freezed == catId ? _self.catId : catId // ignore: cast_nullable_to_non_nullable
as String?,prodHsnId: freezed == prodHsnId ? _self.prodHsnId : prodHsnId // ignore: cast_nullable_to_non_nullable
as String?,prodHsnCode: freezed == prodHsnCode ? _self.prodHsnCode : prodHsnCode // ignore: cast_nullable_to_non_nullable
as String?,prodShortName: freezed == prodShortName ? _self.prodShortName : prodShortName // ignore: cast_nullable_to_non_nullable
as String?,prodPrice: freezed == prodPrice ? _self.prodPrice : prodPrice // ignore: cast_nullable_to_non_nullable
as String?,prodMrp: freezed == prodMrp ? _self.prodMrp : prodMrp // ignore: cast_nullable_to_non_nullable
as String?,prodBuy: freezed == prodBuy ? _self.prodBuy : prodBuy // ignore: cast_nullable_to_non_nullable
as String?,prodSell: freezed == prodSell ? _self.prodSell : prodSell // ignore: cast_nullable_to_non_nullable
as String?,prodFreeItem: freezed == prodFreeItem ? _self.prodFreeItem : prodFreeItem // ignore: cast_nullable_to_non_nullable
as String?,prodRkPrice: freezed == prodRkPrice ? _self.prodRkPrice : prodRkPrice // ignore: cast_nullable_to_non_nullable
as String?,prodTax: freezed == prodTax ? _self.prodTax : prodTax // ignore: cast_nullable_to_non_nullable
as ProdTax?,
  ));
}

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdImageCopyWith<$Res>? get prodImage {
    if (_self.prodImage == null) {
    return null;
  }

  return $ProdImageCopyWith<$Res>(_self.prodImage!, (value) {
    return _then(_self.copyWith(prodImage: value));
  });
}/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdTaxCopyWith<$Res>? get prodTax {
    if (_self.prodTax == null) {
    return null;
  }

  return $ProdTaxCopyWith<$Res>(_self.prodTax!, (value) {
    return _then(_self.copyWith(prodTax: value));
  });
}
}


/// @nodoc
mixin _$ProdImage {

 String? get nano; String? get micro; String? get small;@JsonKey(name: 'extra_small') String? get extraSmall; String? get medium; String? get large;@JsonKey(name: 'extra_large') String? get extraLarge;@JsonKey(name: 'custom_image') String? get customImage;
/// Create a copy of ProdImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdImageCopyWith<ProdImage> get copyWith => _$ProdImageCopyWithImpl<ProdImage>(this as ProdImage, _$identity);

  /// Serializes this ProdImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdImage&&(identical(other.nano, nano) || other.nano == nano)&&(identical(other.micro, micro) || other.micro == micro)&&(identical(other.small, small) || other.small == small)&&(identical(other.extraSmall, extraSmall) || other.extraSmall == extraSmall)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.large, large) || other.large == large)&&(identical(other.extraLarge, extraLarge) || other.extraLarge == extraLarge)&&(identical(other.customImage, customImage) || other.customImage == customImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nano,micro,small,extraSmall,medium,large,extraLarge,customImage);

@override
String toString() {
  return 'ProdImage(nano: $nano, micro: $micro, small: $small, extraSmall: $extraSmall, medium: $medium, large: $large, extraLarge: $extraLarge, customImage: $customImage)';
}


}

/// @nodoc
abstract mixin class $ProdImageCopyWith<$Res>  {
  factory $ProdImageCopyWith(ProdImage value, $Res Function(ProdImage) _then) = _$ProdImageCopyWithImpl;
@useResult
$Res call({
 String? nano, String? micro, String? small,@JsonKey(name: 'extra_small') String? extraSmall, String? medium, String? large,@JsonKey(name: 'extra_large') String? extraLarge,@JsonKey(name: 'custom_image') String? customImage
});




}
/// @nodoc
class _$ProdImageCopyWithImpl<$Res>
    implements $ProdImageCopyWith<$Res> {
  _$ProdImageCopyWithImpl(this._self, this._then);

  final ProdImage _self;
  final $Res Function(ProdImage) _then;

/// Create a copy of ProdImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nano = freezed,Object? micro = freezed,Object? small = freezed,Object? extraSmall = freezed,Object? medium = freezed,Object? large = freezed,Object? extraLarge = freezed,Object? customImage = freezed,}) {
  return _then(_self.copyWith(
nano: freezed == nano ? _self.nano : nano // ignore: cast_nullable_to_non_nullable
as String?,micro: freezed == micro ? _self.micro : micro // ignore: cast_nullable_to_non_nullable
as String?,small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,extraSmall: freezed == extraSmall ? _self.extraSmall : extraSmall // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,extraLarge: freezed == extraLarge ? _self.extraLarge : extraLarge // ignore: cast_nullable_to_non_nullable
as String?,customImage: freezed == customImage ? _self.customImage : customImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProdImage].
extension ProdImagePatterns on ProdImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProdImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProdImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProdImage value)  $default,){
final _that = this;
switch (_that) {
case _ProdImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProdImage value)?  $default,){
final _that = this;
switch (_that) {
case _ProdImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nano,  String? micro,  String? small, @JsonKey(name: 'extra_small')  String? extraSmall,  String? medium,  String? large, @JsonKey(name: 'extra_large')  String? extraLarge, @JsonKey(name: 'custom_image')  String? customImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProdImage() when $default != null:
return $default(_that.nano,_that.micro,_that.small,_that.extraSmall,_that.medium,_that.large,_that.extraLarge,_that.customImage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nano,  String? micro,  String? small, @JsonKey(name: 'extra_small')  String? extraSmall,  String? medium,  String? large, @JsonKey(name: 'extra_large')  String? extraLarge, @JsonKey(name: 'custom_image')  String? customImage)  $default,) {final _that = this;
switch (_that) {
case _ProdImage():
return $default(_that.nano,_that.micro,_that.small,_that.extraSmall,_that.medium,_that.large,_that.extraLarge,_that.customImage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nano,  String? micro,  String? small, @JsonKey(name: 'extra_small')  String? extraSmall,  String? medium,  String? large, @JsonKey(name: 'extra_large')  String? extraLarge, @JsonKey(name: 'custom_image')  String? customImage)?  $default,) {final _that = this;
switch (_that) {
case _ProdImage() when $default != null:
return $default(_that.nano,_that.micro,_that.small,_that.extraSmall,_that.medium,_that.large,_that.extraLarge,_that.customImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProdImage implements ProdImage {
  const _ProdImage({this.nano, this.micro, this.small, @JsonKey(name: 'extra_small') this.extraSmall, this.medium, this.large, @JsonKey(name: 'extra_large') this.extraLarge, @JsonKey(name: 'custom_image') this.customImage});
  factory _ProdImage.fromJson(Map<String, dynamic> json) => _$ProdImageFromJson(json);

@override final  String? nano;
@override final  String? micro;
@override final  String? small;
@override@JsonKey(name: 'extra_small') final  String? extraSmall;
@override final  String? medium;
@override final  String? large;
@override@JsonKey(name: 'extra_large') final  String? extraLarge;
@override@JsonKey(name: 'custom_image') final  String? customImage;

/// Create a copy of ProdImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdImageCopyWith<_ProdImage> get copyWith => __$ProdImageCopyWithImpl<_ProdImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProdImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProdImage&&(identical(other.nano, nano) || other.nano == nano)&&(identical(other.micro, micro) || other.micro == micro)&&(identical(other.small, small) || other.small == small)&&(identical(other.extraSmall, extraSmall) || other.extraSmall == extraSmall)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.large, large) || other.large == large)&&(identical(other.extraLarge, extraLarge) || other.extraLarge == extraLarge)&&(identical(other.customImage, customImage) || other.customImage == customImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nano,micro,small,extraSmall,medium,large,extraLarge,customImage);

@override
String toString() {
  return 'ProdImage(nano: $nano, micro: $micro, small: $small, extraSmall: $extraSmall, medium: $medium, large: $large, extraLarge: $extraLarge, customImage: $customImage)';
}


}

/// @nodoc
abstract mixin class _$ProdImageCopyWith<$Res> implements $ProdImageCopyWith<$Res> {
  factory _$ProdImageCopyWith(_ProdImage value, $Res Function(_ProdImage) _then) = __$ProdImageCopyWithImpl;
@override @useResult
$Res call({
 String? nano, String? micro, String? small,@JsonKey(name: 'extra_small') String? extraSmall, String? medium, String? large,@JsonKey(name: 'extra_large') String? extraLarge,@JsonKey(name: 'custom_image') String? customImage
});




}
/// @nodoc
class __$ProdImageCopyWithImpl<$Res>
    implements _$ProdImageCopyWith<$Res> {
  __$ProdImageCopyWithImpl(this._self, this._then);

  final _ProdImage _self;
  final $Res Function(_ProdImage) _then;

/// Create a copy of ProdImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nano = freezed,Object? micro = freezed,Object? small = freezed,Object? extraSmall = freezed,Object? medium = freezed,Object? large = freezed,Object? extraLarge = freezed,Object? customImage = freezed,}) {
  return _then(_ProdImage(
nano: freezed == nano ? _self.nano : nano // ignore: cast_nullable_to_non_nullable
as String?,micro: freezed == micro ? _self.micro : micro // ignore: cast_nullable_to_non_nullable
as String?,small: freezed == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String?,extraSmall: freezed == extraSmall ? _self.extraSmall : extraSmall // ignore: cast_nullable_to_non_nullable
as String?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String?,large: freezed == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String?,extraLarge: freezed == extraLarge ? _self.extraLarge : extraLarge // ignore: cast_nullable_to_non_nullable
as String?,customImage: freezed == customImage ? _self.customImage : customImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProdTax {

@JsonKey(name: 'IN') IN? get iN;@JsonKey(name: 'OUT') IN? get oUT;
/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdTaxCopyWith<ProdTax> get copyWith => _$ProdTaxCopyWithImpl<ProdTax>(this as ProdTax, _$identity);

  /// Serializes this ProdTax to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdTax&&(identical(other.iN, iN) || other.iN == iN)&&(identical(other.oUT, oUT) || other.oUT == oUT));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iN,oUT);

@override
String toString() {
  return 'ProdTax(iN: $iN, oUT: $oUT)';
}


}

/// @nodoc
abstract mixin class $ProdTaxCopyWith<$Res>  {
  factory $ProdTaxCopyWith(ProdTax value, $Res Function(ProdTax) _then) = _$ProdTaxCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'IN') IN? iN,@JsonKey(name: 'OUT') IN? oUT
});


$INCopyWith<$Res>? get iN;$INCopyWith<$Res>? get oUT;

}
/// @nodoc
class _$ProdTaxCopyWithImpl<$Res>
    implements $ProdTaxCopyWith<$Res> {
  _$ProdTaxCopyWithImpl(this._self, this._then);

  final ProdTax _self;
  final $Res Function(ProdTax) _then;

/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iN = freezed,Object? oUT = freezed,}) {
  return _then(_self.copyWith(
iN: freezed == iN ? _self.iN : iN // ignore: cast_nullable_to_non_nullable
as IN?,oUT: freezed == oUT ? _self.oUT : oUT // ignore: cast_nullable_to_non_nullable
as IN?,
  ));
}
/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INCopyWith<$Res>? get iN {
    if (_self.iN == null) {
    return null;
  }

  return $INCopyWith<$Res>(_self.iN!, (value) {
    return _then(_self.copyWith(iN: value));
  });
}/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INCopyWith<$Res>? get oUT {
    if (_self.oUT == null) {
    return null;
  }

  return $INCopyWith<$Res>(_self.oUT!, (value) {
    return _then(_self.copyWith(oUT: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProdTax].
extension ProdTaxPatterns on ProdTax {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProdTax value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProdTax() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProdTax value)  $default,){
final _that = this;
switch (_that) {
case _ProdTax():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProdTax value)?  $default,){
final _that = this;
switch (_that) {
case _ProdTax() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'IN')  IN? iN, @JsonKey(name: 'OUT')  IN? oUT)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProdTax() when $default != null:
return $default(_that.iN,_that.oUT);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'IN')  IN? iN, @JsonKey(name: 'OUT')  IN? oUT)  $default,) {final _that = this;
switch (_that) {
case _ProdTax():
return $default(_that.iN,_that.oUT);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'IN')  IN? iN, @JsonKey(name: 'OUT')  IN? oUT)?  $default,) {final _that = this;
switch (_that) {
case _ProdTax() when $default != null:
return $default(_that.iN,_that.oUT);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProdTax implements ProdTax {
  const _ProdTax({@JsonKey(name: 'IN') this.iN, @JsonKey(name: 'OUT') this.oUT});
  factory _ProdTax.fromJson(Map<String, dynamic> json) => _$ProdTaxFromJson(json);

@override@JsonKey(name: 'IN') final  IN? iN;
@override@JsonKey(name: 'OUT') final  IN? oUT;

/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdTaxCopyWith<_ProdTax> get copyWith => __$ProdTaxCopyWithImpl<_ProdTax>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProdTaxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProdTax&&(identical(other.iN, iN) || other.iN == iN)&&(identical(other.oUT, oUT) || other.oUT == oUT));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iN,oUT);

@override
String toString() {
  return 'ProdTax(iN: $iN, oUT: $oUT)';
}


}

/// @nodoc
abstract mixin class _$ProdTaxCopyWith<$Res> implements $ProdTaxCopyWith<$Res> {
  factory _$ProdTaxCopyWith(_ProdTax value, $Res Function(_ProdTax) _then) = __$ProdTaxCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'IN') IN? iN,@JsonKey(name: 'OUT') IN? oUT
});


@override $INCopyWith<$Res>? get iN;@override $INCopyWith<$Res>? get oUT;

}
/// @nodoc
class __$ProdTaxCopyWithImpl<$Res>
    implements _$ProdTaxCopyWith<$Res> {
  __$ProdTaxCopyWithImpl(this._self, this._then);

  final _ProdTax _self;
  final $Res Function(_ProdTax) _then;

/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iN = freezed,Object? oUT = freezed,}) {
  return _then(_ProdTax(
iN: freezed == iN ? _self.iN : iN // ignore: cast_nullable_to_non_nullable
as IN?,oUT: freezed == oUT ? _self.oUT : oUT // ignore: cast_nullable_to_non_nullable
as IN?,
  ));
}

/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INCopyWith<$Res>? get iN {
    if (_self.iN == null) {
    return null;
  }

  return $INCopyWith<$Res>(_self.iN!, (value) {
    return _then(_self.copyWith(iN: value));
  });
}/// Create a copy of ProdTax
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$INCopyWith<$Res>? get oUT {
    if (_self.oUT == null) {
    return null;
  }

  return $INCopyWith<$Res>(_self.oUT!, (value) {
    return _then(_self.copyWith(oUT: value));
  });
}
}


/// @nodoc
mixin _$IN {

@JsonKey(name: 'IS') List<IS>? get iS;
/// Create a copy of IN
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$INCopyWith<IN> get copyWith => _$INCopyWithImpl<IN>(this as IN, _$identity);

  /// Serializes this IN to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IN&&const DeepCollectionEquality().equals(other.iS, iS));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(iS));

@override
String toString() {
  return 'IN(iS: $iS)';
}


}

/// @nodoc
abstract mixin class $INCopyWith<$Res>  {
  factory $INCopyWith(IN value, $Res Function(IN) _then) = _$INCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'IS') List<IS>? iS
});




}
/// @nodoc
class _$INCopyWithImpl<$Res>
    implements $INCopyWith<$Res> {
  _$INCopyWithImpl(this._self, this._then);

  final IN _self;
  final $Res Function(IN) _then;

/// Create a copy of IN
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iS = freezed,}) {
  return _then(_self.copyWith(
iS: freezed == iS ? _self.iS : iS // ignore: cast_nullable_to_non_nullable
as List<IS>?,
  ));
}

}


/// Adds pattern-matching-related methods to [IN].
extension INPatterns on IN {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IN value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IN() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IN value)  $default,){
final _that = this;
switch (_that) {
case _IN():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IN value)?  $default,){
final _that = this;
switch (_that) {
case _IN() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'IS')  List<IS>? iS)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IN() when $default != null:
return $default(_that.iS);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'IS')  List<IS>? iS)  $default,) {final _that = this;
switch (_that) {
case _IN():
return $default(_that.iS);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'IS')  List<IS>? iS)?  $default,) {final _that = this;
switch (_that) {
case _IN() when $default != null:
return $default(_that.iS);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IN implements IN {
  const _IN({@JsonKey(name: 'IS') final  List<IS>? iS}): _iS = iS;
  factory _IN.fromJson(Map<String, dynamic> json) => _$INFromJson(json);

 final  List<IS>? _iS;
@override@JsonKey(name: 'IS') List<IS>? get iS {
  final value = _iS;
  if (value == null) return null;
  if (_iS is EqualUnmodifiableListView) return _iS;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of IN
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$INCopyWith<_IN> get copyWith => __$INCopyWithImpl<_IN>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$INToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IN&&const DeepCollectionEquality().equals(other._iS, _iS));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_iS));

@override
String toString() {
  return 'IN(iS: $iS)';
}


}

/// @nodoc
abstract mixin class _$INCopyWith<$Res> implements $INCopyWith<$Res> {
  factory _$INCopyWith(_IN value, $Res Function(_IN) _then) = __$INCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'IS') List<IS>? iS
});




}
/// @nodoc
class __$INCopyWithImpl<$Res>
    implements _$INCopyWith<$Res> {
  __$INCopyWithImpl(this._self, this._then);

  final _IN _self;
  final $Res Function(_IN) _then;

/// Create a copy of IN
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iS = freezed,}) {
  return _then(_IN(
iS: freezed == iS ? _self._iS : iS // ignore: cast_nullable_to_non_nullable
as List<IS>?,
  ));
}


}


/// @nodoc
mixin _$IS {

@JsonKey(name: 'taxVal_date') String? get taxValDate;@JsonKey(name: 'taxVal_country') String? get taxValCountry;@JsonKey(name: 'taxVal_from_rate') String? get taxValFromRate;@JsonKey(name: 'taxVal_to_rate') String? get taxValToRate;@JsonKey(name: 'taxVal_state') String? get taxValState;@JsonKey(name: 'taxVal_behav') String? get taxValBehav;@JsonKey(name: 'taxVal_taxPercentage') String? get taxValTaxPercentage;@JsonKey(name: 'taxVal_exemption') String? get taxValExemption;@JsonKey(name: 'taxVal_OwnId') String? get taxValOwnId;@JsonKey(name: 'tax_name') String? get taxName;@JsonKey(name: 'tax_percent') String? get taxPercent;@JsonKey(name: 'gst_type') String? get gstType;@JsonKey(name: 'tax_id') String? get taxId;@JsonKey(name: 'tax_parent') String? get taxParent;@JsonKey(name: 'tax_apply_on') String? get taxApplyOn;
/// Create a copy of IS
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ISCopyWith<IS> get copyWith => _$ISCopyWithImpl<IS>(this as IS, _$identity);

  /// Serializes this IS to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IS&&(identical(other.taxValDate, taxValDate) || other.taxValDate == taxValDate)&&(identical(other.taxValCountry, taxValCountry) || other.taxValCountry == taxValCountry)&&(identical(other.taxValFromRate, taxValFromRate) || other.taxValFromRate == taxValFromRate)&&(identical(other.taxValToRate, taxValToRate) || other.taxValToRate == taxValToRate)&&(identical(other.taxValState, taxValState) || other.taxValState == taxValState)&&(identical(other.taxValBehav, taxValBehav) || other.taxValBehav == taxValBehav)&&(identical(other.taxValTaxPercentage, taxValTaxPercentage) || other.taxValTaxPercentage == taxValTaxPercentage)&&(identical(other.taxValExemption, taxValExemption) || other.taxValExemption == taxValExemption)&&(identical(other.taxValOwnId, taxValOwnId) || other.taxValOwnId == taxValOwnId)&&(identical(other.taxName, taxName) || other.taxName == taxName)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.gstType, gstType) || other.gstType == gstType)&&(identical(other.taxId, taxId) || other.taxId == taxId)&&(identical(other.taxParent, taxParent) || other.taxParent == taxParent)&&(identical(other.taxApplyOn, taxApplyOn) || other.taxApplyOn == taxApplyOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxValDate,taxValCountry,taxValFromRate,taxValToRate,taxValState,taxValBehav,taxValTaxPercentage,taxValExemption,taxValOwnId,taxName,taxPercent,gstType,taxId,taxParent,taxApplyOn);

@override
String toString() {
  return 'IS(taxValDate: $taxValDate, taxValCountry: $taxValCountry, taxValFromRate: $taxValFromRate, taxValToRate: $taxValToRate, taxValState: $taxValState, taxValBehav: $taxValBehav, taxValTaxPercentage: $taxValTaxPercentage, taxValExemption: $taxValExemption, taxValOwnId: $taxValOwnId, taxName: $taxName, taxPercent: $taxPercent, gstType: $gstType, taxId: $taxId, taxParent: $taxParent, taxApplyOn: $taxApplyOn)';
}


}

/// @nodoc
abstract mixin class $ISCopyWith<$Res>  {
  factory $ISCopyWith(IS value, $Res Function(IS) _then) = _$ISCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'taxVal_date') String? taxValDate,@JsonKey(name: 'taxVal_country') String? taxValCountry,@JsonKey(name: 'taxVal_from_rate') String? taxValFromRate,@JsonKey(name: 'taxVal_to_rate') String? taxValToRate,@JsonKey(name: 'taxVal_state') String? taxValState,@JsonKey(name: 'taxVal_behav') String? taxValBehav,@JsonKey(name: 'taxVal_taxPercentage') String? taxValTaxPercentage,@JsonKey(name: 'taxVal_exemption') String? taxValExemption,@JsonKey(name: 'taxVal_OwnId') String? taxValOwnId,@JsonKey(name: 'tax_name') String? taxName,@JsonKey(name: 'tax_percent') String? taxPercent,@JsonKey(name: 'gst_type') String? gstType,@JsonKey(name: 'tax_id') String? taxId,@JsonKey(name: 'tax_parent') String? taxParent,@JsonKey(name: 'tax_apply_on') String? taxApplyOn
});




}
/// @nodoc
class _$ISCopyWithImpl<$Res>
    implements $ISCopyWith<$Res> {
  _$ISCopyWithImpl(this._self, this._then);

  final IS _self;
  final $Res Function(IS) _then;

/// Create a copy of IS
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taxValDate = freezed,Object? taxValCountry = freezed,Object? taxValFromRate = freezed,Object? taxValToRate = freezed,Object? taxValState = freezed,Object? taxValBehav = freezed,Object? taxValTaxPercentage = freezed,Object? taxValExemption = freezed,Object? taxValOwnId = freezed,Object? taxName = freezed,Object? taxPercent = freezed,Object? gstType = freezed,Object? taxId = freezed,Object? taxParent = freezed,Object? taxApplyOn = freezed,}) {
  return _then(_self.copyWith(
taxValDate: freezed == taxValDate ? _self.taxValDate : taxValDate // ignore: cast_nullable_to_non_nullable
as String?,taxValCountry: freezed == taxValCountry ? _self.taxValCountry : taxValCountry // ignore: cast_nullable_to_non_nullable
as String?,taxValFromRate: freezed == taxValFromRate ? _self.taxValFromRate : taxValFromRate // ignore: cast_nullable_to_non_nullable
as String?,taxValToRate: freezed == taxValToRate ? _self.taxValToRate : taxValToRate // ignore: cast_nullable_to_non_nullable
as String?,taxValState: freezed == taxValState ? _self.taxValState : taxValState // ignore: cast_nullable_to_non_nullable
as String?,taxValBehav: freezed == taxValBehav ? _self.taxValBehav : taxValBehav // ignore: cast_nullable_to_non_nullable
as String?,taxValTaxPercentage: freezed == taxValTaxPercentage ? _self.taxValTaxPercentage : taxValTaxPercentage // ignore: cast_nullable_to_non_nullable
as String?,taxValExemption: freezed == taxValExemption ? _self.taxValExemption : taxValExemption // ignore: cast_nullable_to_non_nullable
as String?,taxValOwnId: freezed == taxValOwnId ? _self.taxValOwnId : taxValOwnId // ignore: cast_nullable_to_non_nullable
as String?,taxName: freezed == taxName ? _self.taxName : taxName // ignore: cast_nullable_to_non_nullable
as String?,taxPercent: freezed == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as String?,gstType: freezed == gstType ? _self.gstType : gstType // ignore: cast_nullable_to_non_nullable
as String?,taxId: freezed == taxId ? _self.taxId : taxId // ignore: cast_nullable_to_non_nullable
as String?,taxParent: freezed == taxParent ? _self.taxParent : taxParent // ignore: cast_nullable_to_non_nullable
as String?,taxApplyOn: freezed == taxApplyOn ? _self.taxApplyOn : taxApplyOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IS].
extension ISPatterns on IS {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IS value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IS() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IS value)  $default,){
final _that = this;
switch (_that) {
case _IS():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IS value)?  $default,){
final _that = this;
switch (_that) {
case _IS() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'taxVal_date')  String? taxValDate, @JsonKey(name: 'taxVal_country')  String? taxValCountry, @JsonKey(name: 'taxVal_from_rate')  String? taxValFromRate, @JsonKey(name: 'taxVal_to_rate')  String? taxValToRate, @JsonKey(name: 'taxVal_state')  String? taxValState, @JsonKey(name: 'taxVal_behav')  String? taxValBehav, @JsonKey(name: 'taxVal_taxPercentage')  String? taxValTaxPercentage, @JsonKey(name: 'taxVal_exemption')  String? taxValExemption, @JsonKey(name: 'taxVal_OwnId')  String? taxValOwnId, @JsonKey(name: 'tax_name')  String? taxName, @JsonKey(name: 'tax_percent')  String? taxPercent, @JsonKey(name: 'gst_type')  String? gstType, @JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'tax_parent')  String? taxParent, @JsonKey(name: 'tax_apply_on')  String? taxApplyOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IS() when $default != null:
return $default(_that.taxValDate,_that.taxValCountry,_that.taxValFromRate,_that.taxValToRate,_that.taxValState,_that.taxValBehav,_that.taxValTaxPercentage,_that.taxValExemption,_that.taxValOwnId,_that.taxName,_that.taxPercent,_that.gstType,_that.taxId,_that.taxParent,_that.taxApplyOn);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'taxVal_date')  String? taxValDate, @JsonKey(name: 'taxVal_country')  String? taxValCountry, @JsonKey(name: 'taxVal_from_rate')  String? taxValFromRate, @JsonKey(name: 'taxVal_to_rate')  String? taxValToRate, @JsonKey(name: 'taxVal_state')  String? taxValState, @JsonKey(name: 'taxVal_behav')  String? taxValBehav, @JsonKey(name: 'taxVal_taxPercentage')  String? taxValTaxPercentage, @JsonKey(name: 'taxVal_exemption')  String? taxValExemption, @JsonKey(name: 'taxVal_OwnId')  String? taxValOwnId, @JsonKey(name: 'tax_name')  String? taxName, @JsonKey(name: 'tax_percent')  String? taxPercent, @JsonKey(name: 'gst_type')  String? gstType, @JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'tax_parent')  String? taxParent, @JsonKey(name: 'tax_apply_on')  String? taxApplyOn)  $default,) {final _that = this;
switch (_that) {
case _IS():
return $default(_that.taxValDate,_that.taxValCountry,_that.taxValFromRate,_that.taxValToRate,_that.taxValState,_that.taxValBehav,_that.taxValTaxPercentage,_that.taxValExemption,_that.taxValOwnId,_that.taxName,_that.taxPercent,_that.gstType,_that.taxId,_that.taxParent,_that.taxApplyOn);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'taxVal_date')  String? taxValDate, @JsonKey(name: 'taxVal_country')  String? taxValCountry, @JsonKey(name: 'taxVal_from_rate')  String? taxValFromRate, @JsonKey(name: 'taxVal_to_rate')  String? taxValToRate, @JsonKey(name: 'taxVal_state')  String? taxValState, @JsonKey(name: 'taxVal_behav')  String? taxValBehav, @JsonKey(name: 'taxVal_taxPercentage')  String? taxValTaxPercentage, @JsonKey(name: 'taxVal_exemption')  String? taxValExemption, @JsonKey(name: 'taxVal_OwnId')  String? taxValOwnId, @JsonKey(name: 'tax_name')  String? taxName, @JsonKey(name: 'tax_percent')  String? taxPercent, @JsonKey(name: 'gst_type')  String? gstType, @JsonKey(name: 'tax_id')  String? taxId, @JsonKey(name: 'tax_parent')  String? taxParent, @JsonKey(name: 'tax_apply_on')  String? taxApplyOn)?  $default,) {final _that = this;
switch (_that) {
case _IS() when $default != null:
return $default(_that.taxValDate,_that.taxValCountry,_that.taxValFromRate,_that.taxValToRate,_that.taxValState,_that.taxValBehav,_that.taxValTaxPercentage,_that.taxValExemption,_that.taxValOwnId,_that.taxName,_that.taxPercent,_that.gstType,_that.taxId,_that.taxParent,_that.taxApplyOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IS implements IS {
  const _IS({@JsonKey(name: 'taxVal_date') this.taxValDate, @JsonKey(name: 'taxVal_country') this.taxValCountry, @JsonKey(name: 'taxVal_from_rate') this.taxValFromRate, @JsonKey(name: 'taxVal_to_rate') this.taxValToRate, @JsonKey(name: 'taxVal_state') this.taxValState, @JsonKey(name: 'taxVal_behav') this.taxValBehav, @JsonKey(name: 'taxVal_taxPercentage') this.taxValTaxPercentage, @JsonKey(name: 'taxVal_exemption') this.taxValExemption, @JsonKey(name: 'taxVal_OwnId') this.taxValOwnId, @JsonKey(name: 'tax_name') this.taxName, @JsonKey(name: 'tax_percent') this.taxPercent, @JsonKey(name: 'gst_type') this.gstType, @JsonKey(name: 'tax_id') this.taxId, @JsonKey(name: 'tax_parent') this.taxParent, @JsonKey(name: 'tax_apply_on') this.taxApplyOn});
  factory _IS.fromJson(Map<String, dynamic> json) => _$ISFromJson(json);

@override@JsonKey(name: 'taxVal_date') final  String? taxValDate;
@override@JsonKey(name: 'taxVal_country') final  String? taxValCountry;
@override@JsonKey(name: 'taxVal_from_rate') final  String? taxValFromRate;
@override@JsonKey(name: 'taxVal_to_rate') final  String? taxValToRate;
@override@JsonKey(name: 'taxVal_state') final  String? taxValState;
@override@JsonKey(name: 'taxVal_behav') final  String? taxValBehav;
@override@JsonKey(name: 'taxVal_taxPercentage') final  String? taxValTaxPercentage;
@override@JsonKey(name: 'taxVal_exemption') final  String? taxValExemption;
@override@JsonKey(name: 'taxVal_OwnId') final  String? taxValOwnId;
@override@JsonKey(name: 'tax_name') final  String? taxName;
@override@JsonKey(name: 'tax_percent') final  String? taxPercent;
@override@JsonKey(name: 'gst_type') final  String? gstType;
@override@JsonKey(name: 'tax_id') final  String? taxId;
@override@JsonKey(name: 'tax_parent') final  String? taxParent;
@override@JsonKey(name: 'tax_apply_on') final  String? taxApplyOn;

/// Create a copy of IS
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ISCopyWith<_IS> get copyWith => __$ISCopyWithImpl<_IS>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ISToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IS&&(identical(other.taxValDate, taxValDate) || other.taxValDate == taxValDate)&&(identical(other.taxValCountry, taxValCountry) || other.taxValCountry == taxValCountry)&&(identical(other.taxValFromRate, taxValFromRate) || other.taxValFromRate == taxValFromRate)&&(identical(other.taxValToRate, taxValToRate) || other.taxValToRate == taxValToRate)&&(identical(other.taxValState, taxValState) || other.taxValState == taxValState)&&(identical(other.taxValBehav, taxValBehav) || other.taxValBehav == taxValBehav)&&(identical(other.taxValTaxPercentage, taxValTaxPercentage) || other.taxValTaxPercentage == taxValTaxPercentage)&&(identical(other.taxValExemption, taxValExemption) || other.taxValExemption == taxValExemption)&&(identical(other.taxValOwnId, taxValOwnId) || other.taxValOwnId == taxValOwnId)&&(identical(other.taxName, taxName) || other.taxName == taxName)&&(identical(other.taxPercent, taxPercent) || other.taxPercent == taxPercent)&&(identical(other.gstType, gstType) || other.gstType == gstType)&&(identical(other.taxId, taxId) || other.taxId == taxId)&&(identical(other.taxParent, taxParent) || other.taxParent == taxParent)&&(identical(other.taxApplyOn, taxApplyOn) || other.taxApplyOn == taxApplyOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taxValDate,taxValCountry,taxValFromRate,taxValToRate,taxValState,taxValBehav,taxValTaxPercentage,taxValExemption,taxValOwnId,taxName,taxPercent,gstType,taxId,taxParent,taxApplyOn);

@override
String toString() {
  return 'IS(taxValDate: $taxValDate, taxValCountry: $taxValCountry, taxValFromRate: $taxValFromRate, taxValToRate: $taxValToRate, taxValState: $taxValState, taxValBehav: $taxValBehav, taxValTaxPercentage: $taxValTaxPercentage, taxValExemption: $taxValExemption, taxValOwnId: $taxValOwnId, taxName: $taxName, taxPercent: $taxPercent, gstType: $gstType, taxId: $taxId, taxParent: $taxParent, taxApplyOn: $taxApplyOn)';
}


}

/// @nodoc
abstract mixin class _$ISCopyWith<$Res> implements $ISCopyWith<$Res> {
  factory _$ISCopyWith(_IS value, $Res Function(_IS) _then) = __$ISCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'taxVal_date') String? taxValDate,@JsonKey(name: 'taxVal_country') String? taxValCountry,@JsonKey(name: 'taxVal_from_rate') String? taxValFromRate,@JsonKey(name: 'taxVal_to_rate') String? taxValToRate,@JsonKey(name: 'taxVal_state') String? taxValState,@JsonKey(name: 'taxVal_behav') String? taxValBehav,@JsonKey(name: 'taxVal_taxPercentage') String? taxValTaxPercentage,@JsonKey(name: 'taxVal_exemption') String? taxValExemption,@JsonKey(name: 'taxVal_OwnId') String? taxValOwnId,@JsonKey(name: 'tax_name') String? taxName,@JsonKey(name: 'tax_percent') String? taxPercent,@JsonKey(name: 'gst_type') String? gstType,@JsonKey(name: 'tax_id') String? taxId,@JsonKey(name: 'tax_parent') String? taxParent,@JsonKey(name: 'tax_apply_on') String? taxApplyOn
});




}
/// @nodoc
class __$ISCopyWithImpl<$Res>
    implements _$ISCopyWith<$Res> {
  __$ISCopyWithImpl(this._self, this._then);

  final _IS _self;
  final $Res Function(_IS) _then;

/// Create a copy of IS
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taxValDate = freezed,Object? taxValCountry = freezed,Object? taxValFromRate = freezed,Object? taxValToRate = freezed,Object? taxValState = freezed,Object? taxValBehav = freezed,Object? taxValTaxPercentage = freezed,Object? taxValExemption = freezed,Object? taxValOwnId = freezed,Object? taxName = freezed,Object? taxPercent = freezed,Object? gstType = freezed,Object? taxId = freezed,Object? taxParent = freezed,Object? taxApplyOn = freezed,}) {
  return _then(_IS(
taxValDate: freezed == taxValDate ? _self.taxValDate : taxValDate // ignore: cast_nullable_to_non_nullable
as String?,taxValCountry: freezed == taxValCountry ? _self.taxValCountry : taxValCountry // ignore: cast_nullable_to_non_nullable
as String?,taxValFromRate: freezed == taxValFromRate ? _self.taxValFromRate : taxValFromRate // ignore: cast_nullable_to_non_nullable
as String?,taxValToRate: freezed == taxValToRate ? _self.taxValToRate : taxValToRate // ignore: cast_nullable_to_non_nullable
as String?,taxValState: freezed == taxValState ? _self.taxValState : taxValState // ignore: cast_nullable_to_non_nullable
as String?,taxValBehav: freezed == taxValBehav ? _self.taxValBehav : taxValBehav // ignore: cast_nullable_to_non_nullable
as String?,taxValTaxPercentage: freezed == taxValTaxPercentage ? _self.taxValTaxPercentage : taxValTaxPercentage // ignore: cast_nullable_to_non_nullable
as String?,taxValExemption: freezed == taxValExemption ? _self.taxValExemption : taxValExemption // ignore: cast_nullable_to_non_nullable
as String?,taxValOwnId: freezed == taxValOwnId ? _self.taxValOwnId : taxValOwnId // ignore: cast_nullable_to_non_nullable
as String?,taxName: freezed == taxName ? _self.taxName : taxName // ignore: cast_nullable_to_non_nullable
as String?,taxPercent: freezed == taxPercent ? _self.taxPercent : taxPercent // ignore: cast_nullable_to_non_nullable
as String?,gstType: freezed == gstType ? _self.gstType : gstType // ignore: cast_nullable_to_non_nullable
as String?,taxId: freezed == taxId ? _self.taxId : taxId // ignore: cast_nullable_to_non_nullable
as String?,taxParent: freezed == taxParent ? _self.taxParent : taxParent // ignore: cast_nullable_to_non_nullable
as String?,taxApplyOn: freezed == taxApplyOn ? _self.taxApplyOn : taxApplyOn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
