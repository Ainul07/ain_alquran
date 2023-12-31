import 'dart:convert';

import'package:ai_alquran/utli/util.dart';

class SurahHeaderModel {
  int? id;
  String? nameArabic;
  String? nameLatin;
  String? asma;
  int? ayah;
  String? type;
  String? transliteration;
  String? audio;

  SurahHeaderModel(
      {this.id,
      this.nameArabic,
      this.nameLatin,
      this.asma,
      this.ayah,
      this.type,
      this.transliteration,
      this.audio});

  /// SurahHeaderModel.fromJson construct SurahHeaderModel from json object
  SurahHeaderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameArabic = json['ar'];
    nameLatin = json['ltn'];
    asma = json['asma'];
    ayah = json['len'];
    type = json['type'];
    transliteration = json['trl'];
    audio = json['audio'];
  }

  /// toJson construct Json data based on SurahHeaderModel object
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name_arabic'] = nameArabic;
    data['name_latin'] = nameLatin;
    data['asma'] = asma;
    data['surahLength'] = ayah;
    data['type'] = type;
    data['transliteration'] = transliteration ?? '';
    data['audio'] = audio ?? '';
    return data;
  }

  @override

  /// toString json data string representation
  String toString() {
    //return jsonmodel to string
    return jsonEncode(toJson());
  }

  /// arabicIndex get arabic number representation of the surah
  String get arabicIndex => convertNumberToArabic(id.toString());
}
