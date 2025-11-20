import 'package:flutter/material.dart';

// --- DEFINISI DATA MODEL ---

class Category {
  final String name;
  final IconData icon;
  final Color color;

  const Category({required this.name, required this.icon, required this.color});
}

class Product {
  final String id;
  final String name;
  final String category;
  final IconData icon;
  final double price;
  final String description;
  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.icon,
    required this.price,
    required this.description,
  });
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
  double get totalPrice => product.price * quantity;
}

// Data Dummy
final List<Category> categories = [
  const Category(
    name: "Makanan",
    icon: Icons.restaurant,
    color: Color(0xFFFF6B6B),
  ),
  const Category(
    name: "Minuman",
    icon: Icons.local_cafe,
    color: Color(0xFF4ECDC4),
  ),
  const Category(
    name: "Elektronik",
    icon: Icons.devices_other,
    color: Color(0xFF95E1D3),
  ),
];
final List<Product> products = [
  const Product(
    id: "1",
    name: "Nasi Goreng Spesial",
    category: "Makanan",
    icon: Icons.rice_bowl,
    price: 25000.0,
    description: "Nasi goreng dengan telur, ayam, dan sayuran segar",
  ),
  const Product(
    id: "2",
    name: "Sate Ayam",
    category: "Makanan",
    icon: Icons.outdoor_grill,
    price: 30000.0,
    description: "10 tusuk sate ayam dengan bumbu kacang",
  ),
  const Product(
    id: "3",
    name: "Kopi Latte Dingin",
    category: "Minuman",
    icon: Icons.coffee,
    price: 22000.0,
    description: "Espresso dengan susu dingin dan es batu",
  ),
  const Product(
    id: "4",
    name: "Jus Mangga Segar",
    category: "Minuman",
    icon: Icons.local_bar,
    price: 18000.0,
    description: "Jus mangga asli tanpa gula tambahan",
  ),
  const Product(
    id: "5",
    name: "Smartphone Android",
    category: "Elektronik",
    icon: Icons.phone_android,
    price: 3500000.0,
    description: "Smartphone dengan RAM 8GB dan storage 128GB",
  ),
  const Product(
    id: "6",
    name: "TWS Headset",
    category: "Elektronik",
    icon: Icons.headset,
    price: 450000.0,
    description: "True Wireless Stereo dengan noise cancelling",
  ),
];

// Utility function
String formatRupiah(double amount) {
  return 'Rp ${amount.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
}
