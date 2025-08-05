import 'package:flutter/foundation.dart';
import 'package:myapp/core/extensions/extensions.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlHelper {
  static Database? _db;

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await initDb();
    return _db!;
  }

  static Future<Database> initDb() async {
    final path = join(await getDatabasesPath(), 'retail_app.db');

    return await openDatabase(

      path,
      version: 1,
      onCreate: (db, version) async {


        await db.execute('''
         CREATE TABLE retailers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code TEXT,
  name TEXT,
  owner_name TEXT,
  address TEXT,
  contact TEXT,
  email TEXT,
  gst TEXT,
  pan TEXT,
  type TEXT,
  lat REAL,
  long REAL,
  status INTEGER,
  open_time TEXT,
  close_time TEXT,
  image_path TEXT,
  credit_limit REAL,
  zone TEXT
)

        ''');



        await db.execute('''
          CREATE TABLE checkins (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            retailer_id INTEGER,
            checkin_time TEXT,
            lat REAL,
            long REAL,
            is_active INTEGER DEFAULT 1,
            FOREIGN KEY (retailer_id) REFERENCES retailers(id)
          )
        ''');

        await db.execute('''
          CREATE TABLE orders (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            checkin_id INTEGER,
            order_time TEXT,
            FOREIGN KEY (checkin_id) REFERENCES checkins(id)
          )
        ''');

        await db.execute('''
          CREATE TABLE ordered_products (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            order_id INTEGER,
            product_id INTEGER,
            quantity INTEGER,
            price REAL,
            FOREIGN KEY (order_id) REFERENCES orders(id),
            FOREIGN KEY (product_id) REFERENCES products(id)
          )
        ''');

        await db.execute('''
CREATE TABLE cart_products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id TEXT,
  prod_name TEXT,
  quantity INTEGER,
  price REAL
)''');

        await db.execute('''CREATE TABLE IF NOT EXISTS current_checkin (
  step INTEGER
);''');
        await db.execute('''
  CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    prod_id TEXT,
    prod_code TEXT,
    bar_code TEXT,
    prod_name TEXT,
    uom TEXT,
    unit_id TEXT,
    prod_combo TEXT,
    is_focused TEXT,
    group_ids TEXT,
    category_ids TEXT,
    unit_from_value TEXT,
    unit_to_value TEXT,
    uom_alternate_name TEXT,
    uom_alternate_id TEXT,
    alt_uom_from_decimal TEXT,
    alt_uom_to_decimal TEXT,
    under_warranty TEXT,
    action TEXT,
    group_id TEXT,
    cat_id TEXT,
    prod_hsn_id TEXT,
    prod_hsn_code TEXT,
    prod_short_name TEXT,
    prod_price TEXT,
    prod_mrp TEXT,
    prod_buy TEXT,
    prod_sell TEXT,
    prod_free_item TEXT,
    prod_rk_price TEXT,
    prod_image TEXT,
    prod_tax TEXT
  )
''');

 },
    );
  }

  static Future<bool> insertProducts(List<Products> products) async {
    try {
      final db = await SqlHelper.database;
      for (var product in products) {
        db.insert(
          'products',
          product.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }


      debugPrint('✅ Products saved successfully: ${products.length}');
      return true;
    } catch (e, stackTrace) {
      debugPrint('❌ Failed to save products: $e');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }


  static Future<List<Products>> getProducts() async {
    final db = await SqlHelper.database;
    final maps = await db.query('products');

    return maps.map((e) => ProductsExtension.fromMap(e)).toList();
  }

  static Future<void> clearProducts() async {
    final db = await SqlHelper.database;
    await db.delete('products');
  }

  static Future<void> insertToCart(Products product, int quantity) async {
  final db = await SqlHelper.database;

  await db.insert(
    'cart_products',
    {
      'product_id': product.prodId,
      'prod_name': product.prodName,
      'quantity': quantity,
      'price': product.prodPrice ?? 0,
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}
  static Future<List<Products>> getCartProducts() async {
    final db = await SqlHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('cart_products');

    return List.generate(maps.length, (i) {
      return Products(
        prodId: maps[i]['product_id'].toString(),
        prodName: maps[i]['prod_name'],
        prodMrp: maps[i]['price'].toString(),

      );
    });
  }


  static Future<void> clearCart() async {
    final db = await database;
    await db.delete('cart_products');
  }

  static Future<void> saveCheckInStep(int step) async {
    final db = await database;
    await db.delete('current_checkin');
    await db.insert('current_checkin', {'step': step});
  }

  static Future<int?> getCheckInStep() async {
    final db = await database;
    final result = await db.query('current_checkin');
    if (result.isNotEmpty) {
      return result.first['step'] as int?;
    }
    return null;
  }
}

