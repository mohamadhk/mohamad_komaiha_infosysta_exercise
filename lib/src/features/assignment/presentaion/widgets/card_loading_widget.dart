import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CardLoadingWidget extends StatelessWidget {
  const CardLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 260,
          color: Colors.white,
        ),
      ),
    );
  }
}
