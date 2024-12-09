class SearchedAddressModel {
  final String name;
  final String address;
  final bool isFavorite;

  SearchedAddressModel({
    required this.name,
    required this.address,
    this.isFavorite = false,
  });
}
