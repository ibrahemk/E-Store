import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repository/home_repository.dart';

part 'home_view_model.g.dart';

@riverpod
Future<List<Category>> categories(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  return repository.getCategories();
}

@riverpod
class SelectedCategoryId extends _$SelectedCategoryId {
  @override
  int? build() => null;

  void select(int? id) => state = id;
}

@riverpod
Future<List<Product>> products(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  final selectedId = ref.watch(selectedCategoryIdProvider);
  return repository.getProducts(categoryId: selectedId);
}
