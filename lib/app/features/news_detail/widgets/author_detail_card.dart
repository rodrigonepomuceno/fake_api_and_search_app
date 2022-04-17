import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';

class AuthorDetailCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String urlAvatar;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;

  const AuthorDetailCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.urlAvatar,
    required this.backgroundColor,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        boxShadow: boxShadow,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl: urlAvatar,
              fit: BoxFit.fill,
              height: 50,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.bodyBold(
                    title,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 12),
                  AppText.bodySmallMedium(
                    subTitle,
                    color: AppThemes.instance.colors.grey2,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
