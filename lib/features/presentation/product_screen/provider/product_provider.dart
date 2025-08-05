import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:myapp/data/repositories/product_repo_impl.dart';


class PaginatedProductNotifier extends StateNotifier<AsyncValue<List<Products>>> {
  PaginatedProductNotifier(this.ref) : super(const AsyncValue.loading());

  final Ref ref;
  List<Products> _products = [];
  int _currentPage = 1;
  final int _limit = 20;
  bool _hasNext = true;
  bool _isLoadingMore = false;

  Future<void> fetchInitialProducts() async {
    try {
      state = const AsyncValue.loading();
      _currentPage = 1;
      _products.clear();
      _hasNext = true;

      final repository = ref.read(productRepositoryProvider);
      final newProducts = await repository.getProducts(page: _currentPage, limit: _limit);

      _products = newProducts;
      _hasNext = newProducts.length == _limit;
      state = AsyncValue.data(_products);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> fetchMoreProducts() async {
    if (!_hasNext || _isLoadingMore) return;

    _isLoadingMore = true;
    _currentPage++;

    try {
      final repository = ref.read(productRepositoryProvider);
      final newProducts = await repository.getProducts(page: _currentPage, limit: _limit);

      _products.addAll(newProducts);
      _hasNext = newProducts.length == _limit;
      state = AsyncValue.data(_products);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    } finally {
      _isLoadingMore = false;
    }
  }
}

final paginatedProductProvider = StateNotifierProvider<PaginatedProductNotifier, AsyncValue<List<Products>>>(
  (ref) => PaginatedProductNotifier(ref)..fetchInitialProducts(),
);
