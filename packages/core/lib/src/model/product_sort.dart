enum ProductSort {
  none('None'),
  priceAsc('Price: Low to High'),
  priceDesc('Price: High to Low'),
  nameAsc('Name: A to Z'),
  nameDesc('Name: Z to A');

  final String label;
  const ProductSort(this.label);
}
