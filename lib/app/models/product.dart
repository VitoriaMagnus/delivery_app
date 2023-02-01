import 'dart:convert';

class Product {
  final int id;
  final String nome;
  final String description;
  final double price;
  final String image;

  Product({
    required this.id,
    required this.nome,
    required this.description,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
