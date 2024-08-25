import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprout/app/presentation/pages/home/controller/home_controller.dart';
import 'package:sprout/core/design/foundations/color_foundations.dart';
import 'package:sprout/core/design/tokens/gen/fonts.gen.dart';
import 'package:sprout/core/utils/atom_design/organisms/custom_appbar.dart';

class HomeScreenMobileView extends GetView<HomeController> {
  const HomeScreenMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [const CustomAppBar()];
            },
            body: ListView.separated(
                itemBuilder: (context, index) {
                  //Calculate indexes for two items per row
                  final firstIndex = index * 2;
                  final secondIndex = firstIndex + 1;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                            child: Text(
                          '$firstIndex',
                          style: TextStyle(
                              color: ColorFoundations.icons.white,
                              fontFamily: FontsToken.roboto),
                        )),
                      ),
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                            child: Text(
                          '$secondIndex',
                          style: TextStyle(
                              color: ColorFoundations.icons.white,
                              fontFamily: FontsToken.roboto),
                        )),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: Get.height * 0.05,
                  );
                },
                //Item count taking into consideration that there are two items per row
                itemCount: (50 / 2).ceil())));
  }
}
