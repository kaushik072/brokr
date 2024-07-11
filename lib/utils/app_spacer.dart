import 'package:flutter/cupertino.dart';

class AppSpacer extends StatelessWidget {
  final double? h;
  final double? w;

  const AppSpacer({super.key, this.w, this.h});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
