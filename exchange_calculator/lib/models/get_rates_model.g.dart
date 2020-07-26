// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRatesResult _$GetRatesResultFromJson(Map<String, dynamic> json) {
  return GetRatesResult(
    Rates.fromJson(json['rates'] as Map<String, dynamic>),
    json['base'] as String,
    json['date'] as String,
  );
}

Map<String, dynamic> _$GetRatesResultToJson(GetRatesResult instance) =>
    <String, dynamic>{
      'rates': instance.rates,
      'base': instance.base,
      'date': instance.date,
    };

Rates _$RatesFromJson(Map<String, dynamic> json) {
  return Rates(
    (json['USD'] as num)?.toDouble(),
    (json['JPY'] as num)?.toDouble(),
    (json['BGN'] as num)?.toDouble(),
    (json['CZK'] as num)?.toDouble(),
    (json['Dkk'] as num)?.toDouble(),
    (json['GBP'] as num)?.toDouble(),
    (json['HUF'] as num)?.toDouble(),
    (json['PLN'] as num)?.toDouble(),
    (json['RON'] as num)?.toDouble(),
    (json['SEK'] as num)?.toDouble(),
    (json['CHF'] as num)?.toDouble(),
    (json['ISK'] as num)?.toDouble(),
    (json['NOK'] as num)?.toDouble(),
    (json['HRK'] as num)?.toDouble(),
    (json['RUB'] as num)?.toDouble(),
    (json['TRY'] as num)?.toDouble(),
    (json['AUD'] as num)?.toDouble(),
    (json['BRL'] as num)?.toDouble(),
    (json['CAD'] as num)?.toDouble(),
    (json['CNY'] as num)?.toDouble(),
    (json['HKD'] as num)?.toDouble(),
    (json['IDR'] as num)?.toDouble(),
    (json['ILS'] as num)?.toDouble(),
    (json['INR'] as num)?.toDouble(),
    (json['KRW'] as num)?.toDouble(),
    (json['MXN'] as num)?.toDouble(),
    (json['MYR'] as num)?.toDouble(),
    (json['NZD'] as num)?.toDouble(),
    (json['PHP'] as num)?.toDouble(),
    (json['SGD'] as num)?.toDouble(),
    (json['THB'] as num)?.toDouble(),
    (json['ZAR'] as num)?.toDouble(),
    (json['EUR'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RatesToJson(Rates instance) => <String, dynamic>{
      'USD': instance.usd,
      'JPY': instance.jpy,
      'BGN': instance.bgn,
      'CZK': instance.czk,
      'Dkk': instance.dkk,
      'GBP': instance.gbp,
      'HUF': instance.huf,
      'PLN': instance.pln,
      'RON': instance.ron,
      'SEK': instance.sek,
      'CHF': instance.chf,
      'ISK': instance.isk,
      'NOK': instance.nok,
      'HRK': instance.hrk,
      'RUB': instance.rub,
      'TRY': instance.TRY,
      'AUD': instance.aud,
      'BRL': instance.brl,
      'CAD': instance.cad,
      'CNY': instance.cny,
      'HKD': instance.hkd,
      'IDR': instance.idr,
      'ILS': instance.ils,
      'INR': instance.inr,
      'KRW': instance.krw,
      'MXN': instance.mxn,
      'MYR': instance.myr,
      'NZD': instance.nzd,
      'PHP': instance.php,
      'SGD': instance.sgd,
      'THB': instance.thb,
      'ZAR': instance.zar,
      'EUR': instance.eur,
    };
