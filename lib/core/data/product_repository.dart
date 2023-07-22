import 'package:ads_challenge/core/domain/entities/product_item.dart';
import 'package:get/get.dart';

abstract class ProductRepository {
  List<ProductModel> getAllProducts();
}

class ProductRepositoryImpl extends GetxService implements ProductRepository {
  @override
  List<ProductModel> getAllProducts() {
    
    return [
      ProductModel(name: "Nike Club Max", image: "assets/cart/image1.png", price: "Rp 584.950"),
      ProductModel(name: "Nike Air Max 200", image: "assets/cart/image2.png", price: "Rp 940.500"),
      ProductModel(name: "Nike Air Max 270 Essential", image: "assets/cart/image3.png", price: "Rp 740.950"),
     
    ];
  }
}
