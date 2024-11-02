enum CountryCode {
  dz, // Algeria
  ao, // Angola
  bj, // Benin
  bw, // Botswana
  bf, // Burkina Faso
  bi, // Burundi
  cv, // Cape Verde
  cm, // Cameroon
  cf, // Central African Republic
  td, // Chad
  km, // Comoros
  cg, // Congo (Brazzaville)
  cd, // Congo (Kinshasa)
  ci, // Côte d'Ivoire
  dj, // Djibouti
  eg, // Egypt
  gq, // Equatorial Guinea
  er, // Eritrea
  sz, // Eswatini
  et, // Ethiopia
  ga, // Gabon
  gm, // Gambia
  gh, // Ghana
  gn, // Guinea
  gw, // Guinea-Bissau
  ke, // Kenya
  ls, // Lesotho
  lr, // Liberia
  ly, // Libya
  mg, // Madagascar
  mw, // Malawi
  ml, // Mali
  mr, // Mauritania
  mu, // Mauritius
  ma, // Morocco
  mz, // Mozambique
  na, // Namibia
  ne, // Niger
  ng, // Nigeria
  rw, // Rwanda
  st, // São Tomé and Príncipe
  sn, // Senegal
  sc, // Seychelles
  sl, // Sierra Leone
  so, // Somalia
  za, // South Africa
  ss, // South Sudan
  sd, // Sudan
  tz, // Tanzania
}

extension CountryCodeExtension on CountryCode {
  static CountryCode? fromString(String value) {
    switch (value) {
      case 'dz':
        return CountryCode.dz;
      case 'ao':
        return CountryCode.ao;
      case 'bj':
        return CountryCode.bj;
      case 'bw':
        return CountryCode.bw;
      case 'bf':
        return CountryCode.bf;
      case 'bi':
        return CountryCode.bi;
      case 'cv':
        return CountryCode.cv;
      case 'cm':
        return CountryCode.cm;
      case 'cf':
        return CountryCode.cf;
      case 'td':
        return CountryCode.td;
      case 'km':
        return CountryCode.km;
      case 'cg':
        return CountryCode.cg;
      case 'cd':
        return CountryCode.cd;
      case 'ci':
        return CountryCode.ci;
      case 'dj':
        return CountryCode.dj;
      case 'eg':
        return CountryCode.eg;
      case 'gq':
        return CountryCode.gq;
      case 'er':
        return CountryCode.er;
      case 'sz':
        return CountryCode.sz;
      case 'et':
        return CountryCode.et;
      case 'ga':
        return CountryCode.ga;
      case 'gm':
        return CountryCode.gm;
      case 'gh':
        return CountryCode.gh;
      case 'gn':
        return CountryCode.gn;
      case 'gw':
        return CountryCode.gw;
      case 'ke':
        return CountryCode.ke;
      case 'ls':
        return CountryCode.ls;
      case 'lr':
        return CountryCode.lr;
      case 'ly':
        return CountryCode.ly;
      case 'mg':
        return CountryCode.mg;
      case 'mw':
        return CountryCode.mw;
      case 'ml':
        return CountryCode.ml;
      case 'mr':
        return CountryCode.mr;
      case 'mu':
        return CountryCode.mu;
      case 'ma':
        return CountryCode.ma;
      case 'mz':
        return CountryCode.mz;
      case 'na':
        return CountryCode.na;
      case 'ne':
        return CountryCode.ne;
      case 'ng':
        return CountryCode.ng;
      case 'rw':
        return CountryCode.rw;
      case 'st':
        return CountryCode.st;
      case 'sn':
        return CountryCode.sn;
      case 'sc':
        return CountryCode.sc;
      case 'sl':
        return CountryCode.sl;
      case 'so':
        return CountryCode.so;
      case 'za':
        return CountryCode.za;
      case 'ss':
        return CountryCode.ss;
      case 'sd':
        return CountryCode.sd;
      case 'tz':
        return CountryCode.tz;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case CountryCode.dz:
        return 'dz';
      case CountryCode.ao:
        return 'ao';
      case CountryCode.bj:
        return 'bj';
      case CountryCode.bw:
        return 'bw';
      case CountryCode.bf:
        return 'bf';
      case CountryCode.bi:
        return 'bi';
      case CountryCode.cv:
        return 'cv';
      case CountryCode.cm:
        return 'cm';
      case CountryCode.cf:
        return 'cf';
      case CountryCode.td:
        return 'td';
      case CountryCode.km:
        return 'km';
      case CountryCode.cg:
        return 'cg';
      case CountryCode.cd:
        return 'cd';
      case CountryCode.ci:
        return 'ci';
      case CountryCode.dj:
        return 'dj';
      case CountryCode.eg:
        return 'eg';
      case CountryCode.gq:
        return 'gq';
      case CountryCode.er:
        return 'er';
      case CountryCode.sz:
        return 'sz';
      case CountryCode.et:
        return 'et';
      case CountryCode.ga:
        return 'ga';
      case CountryCode.gm:
        return 'gm';
      case CountryCode.gh:
        return 'gh';
      case CountryCode.gn:
        return 'gn';
      case CountryCode.gw:
        return 'gw';
      case CountryCode.ke:
        return 'ke';
      case CountryCode.ls:
        return 'ls';
      case CountryCode.lr:
        return 'lr';
      case CountryCode.ly:
        return 'ly';
      case CountryCode.mg:
        return 'mg';
      case CountryCode.mw:
        return 'mw';
      case CountryCode.ml:
        return 'ml';
      case CountryCode.mr:
        return 'mr';
      case CountryCode.mu:
        return 'mu';
      case CountryCode.ma:
        return 'ma';
      case CountryCode.mz:
        return 'mz';
      case CountryCode.na:
        return 'na';
      case CountryCode.ne:
        return 'ne';
      case CountryCode.ng:
        return 'ng';
      case CountryCode.rw:
        return 'rw';
      case CountryCode.st:
        return 'st';
      case CountryCode.sn:
        return 'sn';
      case CountryCode.sc:
        return 'sc';
      case CountryCode.sl:
        return 'sl';
      case CountryCode.so:
        return 'so';
      case CountryCode.za:
        return 'za';
      case CountryCode.ss:
        return 'ss';
      case CountryCode.sd:
        return 'sd';
      case CountryCode.tz:
        return 'tz';
    }
  }

  String getCountry() {
    switch (this) {
      case CountryCode.dz:
        return 'Algeria';
      case CountryCode.ao:
        return 'Angola';
      case CountryCode.bj:
        return 'Benin';
      case CountryCode.bw:
        return 'Botswana';
      case CountryCode.bf:
        return 'Burkina Faso';
      case CountryCode.bi:
        return 'Burundi';
      case CountryCode.cv:
        return 'Cape Verde';
      case CountryCode.cm:
        return 'Cameroon';
      case CountryCode.cf:
        return 'Central African Republic';
      case CountryCode.td:
        return 'Chad';
      case CountryCode.km:
        return 'Comoros';
      case CountryCode.cg:
        return 'Congo (Brazzaville)';
      case CountryCode.cd:
        return 'Congo (Kinshasa)';
      case CountryCode.ci:
        return 'Côte d\'Ivoire';
      case CountryCode.dj:
        return 'Djibouti';
      case CountryCode.eg:
        return 'Egypt';
      case CountryCode.gq:
        return 'Equatorial Guinea';
      case CountryCode.er:
        return 'Eritrea';
      case CountryCode.sz:
        return 'Eswatini';
      case CountryCode.et:
        return 'Ethiopia';
      case CountryCode.ga:
        return 'Gabon';
      case CountryCode.gm:
        return 'Gambia';
      case CountryCode.gh:
        return 'Ghana';
      case CountryCode.gn:
        return 'Guinea';
      case CountryCode.gw:
        return 'Guinea-Bissau';
      case CountryCode.ke:
        return 'Kenya';
      case CountryCode.ls:
        return 'Lesotho';
      case CountryCode.lr:
        return 'Liberia';
      case CountryCode.ly:
        return 'Libya';
      case CountryCode.mg:
        return 'Madagascar';
      case CountryCode.mw:
        return 'Malawi';
      case CountryCode.ml:
        return 'Mali';
      case CountryCode.mr:
        return 'Mauritania';
      case CountryCode.mu:
        return 'Mauritius';
      case CountryCode.ma:
        return 'Morocco';
      case CountryCode.mz:
        return 'Mozambique';
      case CountryCode.na:
        return 'Namibia';
      case CountryCode.ne:
        return 'Niger';
      case CountryCode.ng:
        return 'Nigeria';
      case CountryCode.rw:
        return 'Rwanda';
      case CountryCode.st:
        return 'São Tomé and Príncipe';
      case CountryCode.sn:
        return 'Senegal';
      case CountryCode.sc:
        return 'Seychelles';
      case CountryCode.sl:
        return 'Sierra Leone';
      case CountryCode.so:
        return 'Somalia';
      case CountryCode.za:
        return 'South Africa';
      case CountryCode.ss:
        return 'South Sudan';
      case CountryCode.sd:
        return 'Sudan';
      case CountryCode.tz:
        return 'Tanzania';
      default:
        return '';
    }
  }
}
