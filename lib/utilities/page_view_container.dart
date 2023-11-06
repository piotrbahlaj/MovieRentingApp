import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PageViewContainer extends StatelessWidget {
  const PageViewContainer({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.shade400,
              spreadRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
          ),
        ),
      ),
    );
  }
}
