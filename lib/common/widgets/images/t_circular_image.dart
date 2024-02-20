import 'package:flutter/material.dart';
import 'package:shopping/utils/constants/colors.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.fit = BoxFit.cover,
    this.padding = TSizes.sm,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.isNetworkImage = false,
  });

  final BoxFit? fit;
  final double width, height, padding;
  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
