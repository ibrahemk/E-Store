import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<List<Category>> getCategories() async {
    try {
      // The base URL is already set in the Dio provider (https://api.escuelajs.co/api/v1/)
      // So we just need to append 'categories'
      final response = await _dio.get('categories');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => Category.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load categories');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Product>> getProducts({int? categoryId}) async {
    try {
      // The base URL is already set in the Dio provider (https://api.escuelajs.co/api/v1/)
      // So we just need to append 'products'
      final response = await _dio.get(
        'products',
        queryParameters: categoryId != null ? {'categoryId': categoryId} : null,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => Product.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      rethrow;
    }
  }
}

@riverpod
HomeRepository homeRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return HomeRepository(dio);
}
