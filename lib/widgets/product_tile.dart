import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:superlabs_task/widgets/star_rating.dart';

import '../models/product_model.dart';

class ProductTile extends StatefulWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isInWishlist = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Stack(
        children: [
          // Product content
          Column(
            children: [
              Expanded(
                child: ClipRRect(
                  child: CachedNetworkImage(
                    imageUrl: widget.product.thumbnail ??
                        'https://shop.lakmesalon.in/cdn/shop/products/PinkRuby.webp?v=1709969749&width=1445',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorWidget: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image, size: 50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        StarRating(
                          rating: widget.product.averageRating ?? 4.5,
                          color: Colors.black,
                        ),
                        Text(
                          '(${widget.product.reviews.length})',
                        ),
                      ],
                    ),
                    Text(
                      '₹${widget.product.priceStart.toString()}',
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Wishlist button
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isInWishlist = !isInWishlist;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      isInWishlist
                          ? 'Added to Wishlist'
                          : 'Removed from Wishlist',
                    ),
                  ),
                );
              },
              child: Icon(
                isInWishlist ? Icons.favorite : Icons.favorite_border,
                color: isInWishlist ? Colors.red : Colors.grey,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
