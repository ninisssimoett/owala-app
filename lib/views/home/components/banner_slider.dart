import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 180),
      child: PageView(
        children: const [
          _BannerImage(asset: "assets/images/bn1.png"),
          _BannerImage(asset: "assets/images/bn2.png"),
          _BannerImage(asset: "assets/images/bn3.png"),
        ],
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  final String asset;

  const _BannerImage({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), // 🔹 Rounded
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // 🔹 Shadow tipis
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            asset,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}