// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as String,
      name: NativeLanguageText.fromJson(json['name'] as Map<String, dynamic>),
      info: json['info'] == null
          ? null
          : NativeLanguageText.fromJson(json['info'] as Map<String, dynamic>),
      description: NativeLanguageText.fromJson(
          json['description'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      country: (json['country'] as List<dynamic>)
          .map((e) => $enumDecode(_$CountryCodeEnumMap, e))
          .toList(),
      origin: json['origin'] == null
          ? null
          : NativeLanguageText.fromJson(json['origin'] as Map<String, dynamic>),
      hasAudio: json['hasAudio'] as bool,
      isActive: json['isActive'] as bool,
      metadata: json['metadata'] == null
          ? null
          : CourseMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': nativeLanguageTextToJson(instance.name),
      'info': nativeLanguageTextToJson(instance.info),
      'description': nativeLanguageTextToJson(instance.description),
      'origin': nativeLanguageTextToJson(instance.origin),
      'metadata': Course._metadataToJson(instance.metadata),
      'imageUrl': instance.imageUrl,
      'country': instance.country.map((e) => _$CountryCodeEnumMap[e]!).toList(),
      'hasAudio': instance.hasAudio,
      'isActive': instance.isActive,
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

CourseMetaData _$CourseMetaDataFromJson(Map<String, dynamic> json) =>
    CourseMetaData(
      json['creator'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      changedHistory: (json['changedHistory'] as List<dynamic>?)
          ?.map((e) => ChangedAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseMetaDataToJson(CourseMetaData instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
      'changedHistory':
          CourseMetaData._changedHistoryToJson(instance.changedHistory),
    };

ChangedAction _$ChangedActionFromJson(Map<String, dynamic> json) =>
    ChangedAction(
      author: json['author'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      changes: Map<String, String>.from(json['changes'] as Map),
    );

Map<String, dynamic> _$ChangedActionToJson(ChangedAction instance) =>
    <String, dynamic>{
      'author': instance.author,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'changes': instance.changes,
    };
