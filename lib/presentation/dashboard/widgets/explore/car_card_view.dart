import 'package:brokr/domain/models/car_model.dart';
import 'package:brokr/generated/assets.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarCardView extends StatelessWidget {
  final CarData carData;

  const CarCardView({super.key, required this.carData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Theme.of(context).colorScheme.onSurface)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Stack(
              children: [
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Image.network(
                    carData.coverPhoto ?? (carData.photos?.firstOrNull?.photo ?? ""),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child; // Display the image once it's loaded
                      } else {
                        return const SizedBox(
                            height: 180,
                            width: double.infinity,
                            child: Center(
                              child: CupertinoActivityIndicator(),
                            ));
                      }
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                          height: 180,
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
                          width: double.infinity,
                          child: const Icon(Icons.error));
                    },
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.inversePrimary,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  Assets.imagesHostFlat,
                                  height: 18,
                                ),
                                CommonTextView("Top host",
                                    color: Theme.of(context).colorScheme.shadow,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ],
                            ),
                          )),
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            Assets.imagesButtomFavorities,
                            color: Theme.of(context).colorScheme.shadow,
                            height: 8.6,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextView(carData.title ?? "",
                    color: Theme.of(context).colorScheme.shadow,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
                const AppSpacer(h: 5),
                Row(
                  children: [
                    Image.asset(
                      Assets.imagesStarFlat,
                      height: 14,
                      width: 14,
                    ),
                    const AppSpacer(w: 5),
                    CommonTextView("${carData.detailable?.extraMilesRate ?? 0}.0",
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                    CommonTextView(" | ${carData.detailable?.minDaysToTrip ?? 0} Trips",
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                    const Spacer(),
                    CommonTextView("\$${carData.price}/day",
                        color: Theme.of(context).colorScheme.shadow,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ],
                ),
                const AppSpacer(h: 5),
                Row(
                  children: [
                    Image.asset(
                      Assets.imagesLocationFlat,
                      height: 14,
                      width: 14,
                    ),
                    const AppSpacer(w: 5),
                    CommonTextView("${carData.distance} mi from current location",
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
