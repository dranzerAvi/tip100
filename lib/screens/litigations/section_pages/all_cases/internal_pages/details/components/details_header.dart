import 'package:tip100/core/components/small_button.dart';
import 'package:tip100/core/constants/app_colors.dart';
import 'package:tip100/core/constants/app_defaults.dart';
import 'package:tip100/core/constants/app_icons.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatefulWidget {
  const DetailsHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsHeader> createState() => _DetailsHeaderState();
}

class _DetailsHeaderState extends State<DetailsHeader> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding / 2),
      child: Card(
        elevation: 4,
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.textColorBlack,
                ),
              ),
              Spacer(),
              // SmallButton(
              //     buttonColor: AppColors.primary,
              //     buttonIcon: AppIcons.addButton),
            ],
          ),
        ),
      ),
    );
  }
}
