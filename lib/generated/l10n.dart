// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Add a photo`
  String get addAPhoto {
    return Intl.message(
      'Add a photo',
      name: 'addAPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Add Photos to site diary`
  String get addPhotosToSiteDiary {
    return Intl.message(
      'Add Photos to site diary',
      name: 'addPhotosToSiteDiary',
      desc: '',
      args: [],
    );
  }

  /// `Add to site diary`
  String get addToSiteDiary {
    return Intl.message(
      'Add to site diary',
      name: 'addToSiteDiary',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Include in photo gallery`
  String get includeInPhotoGallery {
    return Intl.message(
      'Include in photo gallery',
      name: 'includeInPhotoGallery',
      desc: '',
      args: [],
    );
  }

  /// `Link to existing event?`
  String get linkToExistingEvent {
    return Intl.message(
      'Link to existing event?',
      name: 'linkToExistingEvent',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `New Diary`
  String get newDiary {
    return Intl.message(
      'New Diary',
      name: 'newDiary',
      desc: '',
      args: [],
    );
  }

  /// `Select an event`
  String get selectAnEvent {
    return Intl.message(
      'Select an event',
      name: 'selectAnEvent',
      desc: '',
      args: [],
    );
  }

  /// `Select Area`
  String get selectArea {
    return Intl.message(
      'Select Area',
      name: 'selectArea',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Task Category`
  String get taskCategory {
    return Intl.message(
      'Task Category',
      name: 'taskCategory',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
