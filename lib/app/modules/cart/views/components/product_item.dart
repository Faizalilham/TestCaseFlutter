import 'package:ads_challenge/app/utils/utils.dart';
import 'package:ads_challenge/core/domain/entities/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onDeletePressed;

  const ProductItem({required this.product, required this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
         
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: 'Delete',
          ),
        ],
      ),

      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              onDeletePressed;
            },
            backgroundColor: Color.fromARGB(255, 255, 39, 39),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),

      child: ListTile(
        leading: Image.asset(product.image),
        title: Text(product.name),
        subtitle: Text(product.price),
        
      ),
    );
  }
}
