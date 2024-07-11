import 'package:brokr/domain/models/car_model.dart';
import 'package:brokr/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'car_card_view.dart';

class CardListingView extends StatelessWidget {
  const CardListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final dashboardBloc = context.read<DashboardBloc>();
        if (state is GetCarsLoadingState) {
          return const Expanded(
              child: Center(
            child: CupertinoActivityIndicator(),
          ));
        } else if (state is GetCarsFailedState) {
          EasyLoading.showToast(state.errorMsg, toastPosition: EasyLoadingToastPosition.top);
        }
        return Expanded(
          child: dashboardBloc.carModel.data?.isEmpty ?? true
              ? Center(
                  child: CommonTextView("No Data Found!",
                      color: Theme.of(context).colorScheme.shadow, fontWeight: FontWeight.w500),
                )
              : ListView.builder(
                  itemCount: dashboardBloc.carModel.data?.length ?? 0,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 15),
                  itemBuilder: (context, index) {
                    return CarCardView(
                      carData: dashboardBloc.carModel.data?[index] ?? CarData(),
                    );
                  },
                ),
        );
      },
    );
  }
}
