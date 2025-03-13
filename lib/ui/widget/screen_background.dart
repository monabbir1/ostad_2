import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';

class screenBackground extends StatelessWidget {
  final Widget child;
  const screenBackground({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          width: double.maxFinite,
          height: double.maxFinite,
          AssetsPath.backgroundSvg,fit: BoxFit.cover,),
        child
      ],
    );

  }
}
