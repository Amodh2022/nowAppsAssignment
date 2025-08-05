import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/presentation/checkout_screen/check_out_screen.dart';
import 'package:myapp/features/presentation/product_screen/product_screen.dart';
import 'package:myapp/features/presentation/retailer_home_screen/retail_home_screen.dart';
import 'package:myapp/features/presentation/retailer_screen/retailer_screen.dart';
import '../shared/sqflite/sql_helper.dart';
import 'app_routes.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(

    initialLocation: AppRoutes.initialPage,
    routes: [
      GoRoute(
        path: AppRoutes.initialPage,
        name: 'home',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const RetailerHomeScreen(),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.retailerForm,
            name: AppRoutes.retailerForm,
            builder: (context, state) => const RetailerFormScreen(),
          ),
          GoRoute(
            path: AppRoutes.productScreen,
            name: AppRoutes.productScreen,
            builder: (context, state) => const ProductScreen(),
            routes: [

            ],
          ),
          GoRoute(
            path: AppRoutes.checkoutScreen,
            name: AppRoutes.checkoutScreen,
            builder: (context, state) => const CheckoutScreen(),
          ),
        ],
      ),
    ],
  );
});
