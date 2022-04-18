import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_horizontal_divider/app_horizontal_divider_component.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';
import 'package:news_app/app/features/news_detail/news_detail_controller.dart';
import 'package:news_app/app/features/news_detail/widgets/action_button.dart';
import 'package:news_app/app/features/news_detail/widgets/author_detail_card.dart';
import 'package:news_app/app/features/news_detail/widgets/image_summary.dart';
import 'package:news_app/app/features/news_detail/widgets/pill_featured.dart';
import 'package:news_app/app/features/news_detail/widgets/pill_top.dart';
import 'package:news_app/app/features/news_detail/widgets/reviwed_card.dart';

class NewsDetailPage extends GetView<NewsDetailController> {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Obx(
          () => ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: controller.news.postImage,
                    height: controller.heightImage,
                    fit: BoxFit.cover,
                  ),
                  ActionButton(
                    top: controller.heightImage * 0.15,
                    left: 29,
                    onTap: Get.back,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                        color: AppThemes.instance.colors.whiteDefault,
                      ),
                    ),
                  ),
                  ActionButton(
                    top: controller.heightImage * 0.15,
                    right: 26,
                    onTap: controller.setLiked,
                    widget: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        'assets/icons/menu2.png',
                        height: 10,
                        fit: BoxFit.contain,
                        color: controller.liked ? AppThemes.instance.colors.blueDefault : AppThemes.instance.colors.whiteDefault,
                      ),
                    ),
                  ),
                  ActionButton(
                    top: controller.heightImage * 0.25,
                    right: 26,
                    onTap: controller.shareLink,
                    widget: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.share,
                        size: 15,
                        color: AppThemes.instance.colors.whiteDefault,
                      ),
                    ),
                  ),
                  PillFeatured(
                    onTap: controller.setFeatured,
                    top: controller.heightImage * 0.70,
                    featured: controller.featured,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: controller.heightImage * 0.85),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppThemes.instance.colors.whiteDefault,
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(30),
                          topEnd: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            const PillTop(),
                            const SizedBox(height: 26),
                            AppText.titleBold(
                              controller.news.title,
                              maxLines: 2,
                            ),
                            const SizedBox(height: 31),
                            Wrap(
                              runSpacing: 14,
                              children: [
                                ImageSummary(
                                  title: controller.news.dimensions,
                                  icon: 'assets/icons/dimensions.png',
                                ),
                                const SizedBox(width: 20),
                                ImageSummary(
                                  title: controller.news.tag,
                                  icon: 'assets/icons/tag.png',
                                ),
                                const SizedBox(width: 20),
                                ImageSummary(
                                  title: controller.news.author.country,
                                  icon: 'assets/icons/country.png',
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            AppText.bodySmallMedium(
                              controller.news.contents,
                              maxLines: 100,
                              color: AppThemes.instance.colors.greyDefault,
                              height: 2,
                            ),
                            const SizedBox(height: 25),
                            AuthorDetailCard(
                              urlAvatar: controller.news.author.avatar,
                              title: controller.news.author.name,
                              subTitle: controller.news.author.slogan,
                              backgroundColor: AppThemes.instance.colors.white1,
                            ),
                            const SizedBox(height: 40),
                            AppHorizontalDivider(
                              backgroundColor: AppThemes.instance.colors.grey2,
                            ),
                            const SizedBox(height: 24),
                            AppText.subtitleBold(
                              'Comments',
                              color: AppThemes.instance.colors.blackDefault,
                            ),
                            for (var comment in controller.news.comments)
                              ReviewedCard(
                                stars: comment.stars,
                                comment: comment.comment,
                                email: comment.email,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
