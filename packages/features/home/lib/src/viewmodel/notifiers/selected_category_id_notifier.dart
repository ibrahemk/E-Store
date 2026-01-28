import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_category_id_notifier.g.dart';

@riverpod
class SelectedCategoryId extends _$SelectedCategoryId {
  @override
  int? build() => null;

  void select(int? id) => state = id;
}
