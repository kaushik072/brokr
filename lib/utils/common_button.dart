import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color? btnColor;
  final Color? textColor;
  final String? btnText;
  final void Function()? onTap;

  const CommonButton({super.key, this.btnColor, this.btnText, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: btnColor ?? Theme.of(context).colorScheme.primary),
        child: Center(
            child: CommonTextView(btnText ?? "",
                color: textColor, fontWeight: FontWeight.w500, fontSize: 16)),
      ),
    );
  }
}
