import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:primary/presentation/screens/primary_screen/widgets/primary_list_data_widget.dart';

import '../../../core/colors/app_colors.dart';
import '../../../core/constants/assets_base_path.dart';
import '../../../core/constants/font_weights.dart';

class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: Container(
            color: const Color(0xFF081E3D),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          "$pngAssetsBasePath/icon1.png",
                          height: 34,
                          width: 34,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "Primary",
                          style: TextStyle(
                              color: whiteFFFFFFColor,
                              fontSize: 17,
                             // fontFamily: FontFamily.Lato,
                              fontWeight:normal),
                        ),
                      ),
                      SvgPicture.asset("$svgAssetsBasePath/icon2.svg")
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteFFFFFFColor,
                    ),
                    child: const PrimaryListDataWidget(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
