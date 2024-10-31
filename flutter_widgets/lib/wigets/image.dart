import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Image Widget',
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: CachedNetworkImage(
            imageUrl:
                'https://www.partysuppliesindia.com/cdn/shop/products/A2_33_c020ee18-0c82-4dc1-b16d-c90a64707b20.jpg?v=1635508143&width=1500',
            placeholder: (context, url) {
              return Center(child: CircularProgressIndicator());
            },
            errorWidget: (context, url, error) {
              return Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
