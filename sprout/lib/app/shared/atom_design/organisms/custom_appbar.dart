import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout/core/design/foundations/color_foundations.dart';
import 'package:sprout/core/design/tokens/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      expandedHeight: Get.height * 0.12,
      backgroundColor: ColorFoundations.background.appBarColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: AssetsToken.icons.sproutIcon.svg(
          height: Get.height * 0.045,
          colorFilter: ColorFilter.mode(
            ColorFoundations.icons.white,
            BlendMode.srcATop,
          ),
        ),
      ),
    );
  }
}
