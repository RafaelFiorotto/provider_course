class CartItem {
  final String id, productId, name;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.productId,
    required this.name,
    required this.quantity,
    required this.price,
  });
}
