import 'package:expense_pro/core/components/buttons/primary_button.dart';
import 'package:expense_pro/core/components/buttons/text_button.dart';
import 'package:expense_pro/core/components/icons/arrow_right_icon.dart';
import 'package:expense_pro/utils/res/app_colors.dart';
import 'package:expense_pro/utils/res/app_text.dart';
import 'package:expense_pro/utils/res/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        top: 12.0,
        right: 24.0,
        bottom: 24.0,
      ),
      child: Column(
        children: [
          Container(
            width: 32.0,
            height: 4.0,
            decoration: BoxDecoration(
              color: AppColors.violet40,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)?.filterTransaction ??
                    AppText.filterTransaction,
                style: AppTextStyle.bodyLarge,
              ),
              SimpleButton(
                onPressed: () {},
                text: AppLocalizations.of(context)?.reset ?? AppText.reset,
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)?.filterBy ?? AppText.filterBy,
              style: AppTextStyle.bodyLarge,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.income ?? AppText.income,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.violet20,
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.expense ?? AppText.expense,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.transfer ?? AppText.transfer,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)?.sortBy ?? AppText.sortBy,
              style: AppTextStyle.bodyLarge,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Wrap(
            spacing: 22.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.start,
            children: [
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.highest ?? AppText.highest,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.violet20,
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.lowest ?? AppText.lowest,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.newest ?? AppText.newest,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
              Container(
                width: 110.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.light40,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text(
                  AppLocalizations.of(context)?.oldest ?? AppText.oldest,
                  style: AppTextStyle.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context)?.category ?? AppText.category,
              style: AppTextStyle.bodyLarge,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)?.chooseCategory ?? AppText.chooseCategory,
                style: AppTextStyle.bodyMedium,
              ),
              Row(
                children: [
                  Text(
                    '$selectedCategory ${AppLocalizations.of(context)?.selected ?? AppText.selected}',
                    style: AppTextStyle.bodyMedium,
                  ),
                  const Icon(
                    ArrowRight.arrow_right,
                    color: AppColors.violet100,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          PrimaryButton(
            text: AppLocalizations.of(context)?.apply ?? AppText.apply,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
