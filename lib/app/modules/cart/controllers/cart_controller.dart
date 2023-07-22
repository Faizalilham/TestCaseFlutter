import 'package:ads_challenge/core/data/product_repository.dart';
import 'package:ads_challenge/core/domain/entities/product_item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final ProductRepository _productRepository = ProductRepositoryImpl();

  var products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllProducts();
  }

  void getAllProducts() {
    products.value = _productRepository.getAllProducts();
  }

  void deleteProduct(int index) {
    products.removeAt(index);
  }

  void updateProduct(int index, ProductModel updatedProduct) {
    products[index] = updatedProduct;
  }
}
