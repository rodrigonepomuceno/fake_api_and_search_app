import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/theme/extensions/size_screen_extension.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';
import 'package:news_app/app/features/news_detail/widgets/stars.dart';

class ReviewedCard extends StatelessWidget {
  final int stars;
  final String comment;
  final String email;
  const ReviewedCard({
    Key? key,
    required this.stars,
    required this.comment,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        height: 126,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppThemes.instance.colors.white2,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StarDisplay(
                value: stars,
                filledStar: Icon(
                  Icons.star,
                  color: AppThemes.instance.colors.blueDefault,
                  size: 28,
                ),
                unfilledStar: Icon(
                  Icons.star_border_outlined,
                  color: AppThemes.instance.colors.blueDefault,
                  size: 28,
                ),
              ),
              const SizedBox(height: 10),
              AppText.bodyBold(comment),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Reviewed by ',
                      style: AppThemes.instance.fontStyles.bodySmallRegular.copyWith(
                        color: AppThemes.instance.colors.greyDefault,
                      ),
                    ),
                    TextSpan(
                      text: email,
                      style: AppThemes.instance.fontStyles.bodySmallRegular.copyWith(
                        color: AppThemes.instance.colors.blackDefault,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
