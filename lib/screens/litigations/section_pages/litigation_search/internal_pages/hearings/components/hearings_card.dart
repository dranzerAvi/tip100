import 'package:tip100/core/components/card_tags.dart';
import 'package:tip100/core/components/icon_button_with_text.dart';
import 'package:tip100/core/constants/app_buttons.dart';
import 'package:tip100/core/constants/app_colors.dart';
import 'package:tip100/core/constants/app_defaults.dart';
import 'package:tip100/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../details/components/cta_button.dart';
import 'cta_button_solid.dart';

class HearingsCard extends StatelessWidget {
  final String caseNumber, complaint, caseStage, court, pdoh, ndoh, ndohRemark;

  const HearingsCard(
      {Key? key,
      required this.caseNumber,
      required this.complaint,
      required this.court,
      required this.caseStage,
      required this.pdoh,
      required this.ndoh,
      required this.ndohRemark})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding / 2),
      child: Card(
        elevation: 4,
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 214,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    // CardTag(tagName: 'High Court', tagColor: AppColors.primary),
                    Spacer(),
                    IconButtonWithText(
                        onTap: (){},

                        buttonColor: AppColors.primary,
                        buttonText: 'View Proceedings',
                        buttonIcon: AppIcons.show),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DOH',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 13,
                                  color: AppColors.appGrey,
                                  fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '01 Mar, 2022',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 15,
                                  color: AppColors.textColorBlack,
                                  fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NDOH',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 13,
                                  color: AppColors.appGrey,
                                  fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '01 Apr, 2022',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 15,
                                  color: AppColors.textColorBlack,
                                  fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                Text(
                  'Stage',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 12,
                      color: AppColors.appGrey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'W/S',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 14,
                      color: AppColors.textColorBlack,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stage',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 13,
                                  color: AppColors.appGrey,
                                  fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'W/S',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 15,
                                  color: AppColors.textColorBlack,
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cause List',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 13,
                                  color: AppColors.appGrey,
                                  fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Cause List No. 1',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 15,
                                  color: AppColors.textColorBlack,
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                CardTag(
                    tagName: 'High Court', tagColor: AppColors.textColorBlack),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
