import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/theme/extensions/size_screen_extension.dart';
import 'package:news_app/app/features/news/widgets/author_card.dart';

class NewsCard extends StatelessWidget {
  final Function() onTap;
  final NewsModel news;

  const NewsCard({Key? key, required this.onTap, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, bottom: 20),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 270,
          child: Stack(
            children: [
              SizedBox(
                width: 1.sw * .9,
                height: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: news.postImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 1.sw * 0.075,
                child: AuthorCard(
                  urlAvatar: news.author.avatar,
                  title: news.title,
                  subTitle: news.contents,
                  backgroundColor: AppThemes.instance.colors.whiteDefault,
                  boxShadow: [
                    BoxShadow(
                      color: AppThemes.instance.colors.grey2,
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
