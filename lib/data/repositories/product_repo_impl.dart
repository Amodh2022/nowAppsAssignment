import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/services/network/dio/dio_client.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:myapp/domain/repository/product_repository.dart';
import 'package:myapp/shared/sqflite/api_list_fucntion.dart';

class ProductRepositoryImpl implements ProductRepository {
  final Dio dio;

  List<Products>? _cachedProducts;
  ProductRepositoryImpl(this.dio);

 @override
  Future<List<Products>> getProducts({int? page, required int? limit}) async {
    try {
      if (_cachedProducts == null) {
        final response = await dio.get('GCQS');
        _cachedProducts = await compute(parseProducts, response.data as Map<String, dynamic>);
      }

      final start = (page! - 1) * limit!;
      final end = start + limit;
      return _cachedProducts!.sublist(
        start,
        end > _cachedProducts!.length ? _cachedProducts!.length : end,
      );
    } catch (e) {
      throw Exception("Failed to load products: ${e.toString()}");
    }
  }
}

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final dio = ref.read(dioClientProvider);
  return ProductRepositoryImpl(dio);
});


