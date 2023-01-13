
import 'package:flutter/material.dart';

import '../../../core/constants/assets_base_path.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
     // color: blue081E3DColor,
      child: Center(
        child: Image.asset("$pngAssetsBasePath/primary.png")
      ),
    );
  }
}
