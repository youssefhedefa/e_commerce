class ProductData {
  int? id;
  double? price;
  double? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;

  ProductData(
      {this.id,
        this.price,
        this.oldPrice,
        this.discount,
        this.image,
        this.name,
        this.description,
        this.images,
        this.inFavorites,
        this.inCart});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'].cast<String>();
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> productData = <String, dynamic>{};
    productData['id'] = id;
    productData['price'] = price;
    productData['old_price'] = oldPrice;
    productData['discount'] = discount;
    productData['image'] = image;
    productData['name'] = name;
    productData['description'] = description;
    productData['images'] = images;
    productData['in_favorites'] = inFavorites;
    productData['in_cart'] = inCart;
    return productData;
  }
}
