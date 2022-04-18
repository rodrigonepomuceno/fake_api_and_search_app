import 'package:flutter/material.dart';
import 'package:news_app/app/core/repositories/link_launcher/link_launcher_repository_interface.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkLauncherRepository implements ILinkLauncherRepository {
  @override
  Future<bool> launchLink(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
      return true;
    } else {
      debugPrint('Could not launch $link');
      return false;
    }
  }
}
