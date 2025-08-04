import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/presentation/retailer_screen/retail_screen.dart';
import 'app_routes.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: AppRoutes.initialPage,
    routes: [
      GoRoute(
        path: AppRoutes.initialPage,
        builder: (context, state) => RetailerFormScreen(),
      ),
    ],
  ),
);
