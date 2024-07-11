import 'package:brokr/generated/assets.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/material.dart';

class HeaderCardView extends StatelessWidget {
  const HeaderCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape:
          OutlineInputBorder(borderRadius: BorderRadius.circular(48), borderSide: BorderSide.none),
      elevation: 2,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(48),
            border: Border.all(color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.3))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.7),
              ),
              const AppSpacer(w: 5),
              CommonTextView("Miami Beach, FL",
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.7),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              const Spacer(),
              const VerticalDivider(
                indent: 8,
                endIndent: 8,
              ),
              ImageIcon(
                const AssetImage(Assets.imagesDateTimeFlat),
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.7),
              ),
              const AppSpacer(w: 8),
              CommonTextView("22/11 - 25/11",
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.7),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ],
          ),
        ),
      ),
    );
  }
}
