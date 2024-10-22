// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as String,
      name: json['name'] as String,
      info: json['info'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      country: (json['country'] as List<dynamic>)
          .map((e) => $enumDecode(_$CountryCodeEnumMap, e))
          .toList(),
      origin: json['origin'] as String,
      hasAudio: json['hasAudio'] as bool,
      isActive: json['isActive'] as bool,
      quizzes: Quizzes.fromJson(json['quizzes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'info': instance.info,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'country': instance.country.map((e) => _$CountryCodeEnumMap[e]!).toList(),
      'origin': instance.origin,
      'hasAudio': instance.hasAudio,
      'isActive': instance.isActive,
      'quizzes': instance.quizzes,
    };

const _$CountryCodeEnumMap = {
  CountryCode.dz: 'dz',
  CountryCode.ao: 'ao',
  CountryCode.bj: 'bj',
  CountryCode.bw: 'bw',
  CountryCode.bf: 'bf',
  CountryCode.bi: 'bi',
  CountryCode.cv: 'cv',
  CountryCode.cm: 'cm',
  CountryCode.cf: 'cf',
  CountryCode.td: 'td',
  CountryCode.km: 'km',
  CountryCode.cg: 'cg',
  CountryCode.cd: 'cd',
  CountryCode.ci: 'ci',
  CountryCode.dj: 'dj',
  CountryCode.eg: 'eg',
  CountryCode.gq: 'gq',
  CountryCode.er: 'er',
  CountryCode.sz: 'sz',
  CountryCode.et: 'et',
  CountryCode.ga: 'ga',
  CountryCode.gm: 'gm',
  CountryCode.gh: 'gh',
  CountryCode.gn: 'gn',
  CountryCode.gw: 'gw',
  CountryCode.ke: 'ke',
  CountryCode.ls: 'ls',
  CountryCode.lr: 'lr',
  CountryCode.ly: 'ly',
  CountryCode.mg: 'mg',
  CountryCode.mw: 'mw',
  CountryCode.ml: 'ml',
  CountryCode.mr: 'mr',
  CountryCode.mu: 'mu',
  CountryCode.ma: 'ma',
  CountryCode.mz: 'mz',
  CountryCode.na: 'na',
  CountryCode.ne: 'ne',
  CountryCode.ng: 'ng',
  CountryCode.rw: 'rw',
  CountryCode.st: 'st',
  CountryCode.sn: 'sn',
  CountryCode.sc: 'sc',
  CountryCode.sl: 'sl',
  CountryCode.so: 'so',
  CountryCode.za: 'za',
  CountryCode.ss: 'ss',
  CountryCode.sd: 'sd',
  CountryCode.tz: 'tz',
};
