import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

class CartItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get productId => integer()();
  TextColumn get title => text()();
  RealColumn get price => real()();
  TextColumn get imageUrl => text()();
  IntColumn get quantity => integer().withDefault(const Constant(1))();
}

@DriftDatabase(tables: [CartItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // READ
  Stream<List<CartItem>> watchCartItems() => select(cartItems).watch();
  Future<List<CartItem>> getCartItems() => select(cartItems).get();

  // WRITE
  Future<int> addToCart(CartItemsCompanion entry) async {
    // Check if item already exists
    final existing =
        await (select(cartItems)
              ..where((t) => t.productId.equals(entry.productId.value)))
            .getSingleOrNull();

    if (existing != null) {
      // Update quantity
      await (update(cartItems)..where((t) => t.id.equals(existing.id))).write(
        CartItemsCompanion(quantity: Value(existing.quantity + 1)),
      );
      return existing.id;
    } else {
      return into(cartItems).insert(entry);
    }
  }

  Future<void> removeFromCart(int id) =>
      (delete(cartItems)..where((t) => t.id.equals(id))).go();

  Future<void> updateQuantity(int id, int quantity) {
    if (quantity <= 0) {
      return removeFromCart(id);
    }
    return (update(cartItems)..where((t) => t.id.equals(id))).write(
      CartItemsCompanion(quantity: Value(quantity)),
    );
  }

  Future<void> clearCart() => delete(cartItems).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

@Riverpod(keepAlive: true)
AppDatabase appDatabase(AppDatabaseRef ref) {
  return AppDatabase();
}
