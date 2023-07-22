import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final VoidCallback onAddButtonPressed;

  Shoes({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.onAddButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: semiWhiteColor,
      margin: const EdgeInsets.all(10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(8),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 20,
            ),
          ),
          Expanded(
            child: Image.asset(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Best Seller",
                  style:  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: primaryColor
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: semiGreyColor
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(fontSize: 14, color: blackColor),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: onAddButtonPressed,
                child: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
