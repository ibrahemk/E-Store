import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../repository/home_repository.dart';

part 'categories_provider.g.dart';

@riverpod
Future<List<Category>> categories(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  return repository.getCategories();
}
