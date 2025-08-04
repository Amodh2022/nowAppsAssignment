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
          CREATE TABLE products (
            id INTEGER PRIMARY KEY,
            name TEXT,
            description TEXT,
            prodRkPrice REAL
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
      },
    );
  }
}
