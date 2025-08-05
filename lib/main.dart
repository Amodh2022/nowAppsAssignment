import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/routing/router.dart';
import 'package:myapp/shared/sqflite/sql_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const MyApp()));
  
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final goRouterConfig=ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouterConfig,
      title: 'NowApps Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

