import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app/core/lang/en.dart';
import 'package:news_app/app/core/lang/es.dart';
import 'package:news_app/app/core/lang/pt.dart';

class TranslationsConfig {
  TranslationsConfig._();
  var enTranslations = en;
  var esTranslations = es;
  var ptTranslations = pt;

  static final instance = TranslationsConfig._();

  factory TranslationsConfig() => instance;
  Future<void> init() async {}
}

class TranslationService extends Translations {
  static Locale get locale => const Locale('pt', 'BR');
  static final fallbackLocale = locale;

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': TranslationsConfig.instance.enTranslations,
        'es_ES': TranslationsConfig.instance.esTranslations,
        'pt_BR': TranslationsConfig.instance.ptTranslations,
      };
}
