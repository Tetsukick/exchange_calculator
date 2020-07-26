import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'get_rates_model.g.dart';

@JsonSerializable(nullable: false)
class GetRatesResult {
  GetRatesResult(
      this.rates,
      this.base,
      this.date
      );

  @JsonKey(name: 'rates', nullable: false)
  final Rates rates;
  @JsonKey(name: 'base', nullable: true)
  final String base;
  @JsonKey(name: 'date', nullable: false)
  final String date;

  factory GetRatesResult.fromJson(Map<String, dynamic> json) =>
      _$GetRatesResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetRatesResultToJson(this);
}

@JsonSerializable(nullable: false)
class Rates {
  Rates(
      this.usd,
      this.jpy,
      this.bgn,
      this.czk,
      this.dkk,
      this.gbp,
      this.huf,
      this.pln,
      this.ron,
      this.sek,
      this.chf,
      this.isk,
      this.nok,
      this.hrk,
      this.rub,
      this.TRY,
      this.aud,
      this.brl,
      this.cad,
      this.cny,
      this.hkd,
      this.idr,
      this.ils,
      this.inr,
      this.krw,
      this.mxn,
      this.myr,
      this.nzd,
      this.php,
      this.sgd,
      this.thb,
      this.zar,
      this.eur
      );

  @JsonKey(name: 'USD', nullable: true)
  final double usd;
  @JsonKey(name: 'JPY', nullable: true)
  final double jpy;
  @JsonKey(name: 'BGN', nullable: true)
  final double bgn;
  @JsonKey(name: 'CZK', nullable: true)
  final double czk;
  @JsonKey(name: 'Dkk', nullable: true)
  final double dkk;
  @JsonKey(name: 'GBP', nullable: true)
  final double gbp;
  @JsonKey(name: 'HUF', nullable: true)
  final double huf;
  @JsonKey(name: 'PLN', nullable: true)
  final double pln;
  @JsonKey(name: 'RON', nullable: true)
  final double ron;
  @JsonKey(name: 'SEK', nullable: true)
  final double sek;
  @JsonKey(name: 'CHF', nullable: true)
  final double chf;
  @JsonKey(name: 'ISK', nullable: true)
  final double isk;
  @JsonKey(name: 'NOK', nullable: true)
  final double nok;
  @JsonKey(name: 'HRK', nullable: true)
  final double hrk;
  @JsonKey(name: 'RUB', nullable: true)
  final double rub;
  @JsonKey(name: 'TRY', nullable: true)
  final double TRY;
  @JsonKey(name: 'AUD', nullable: true)
  final double aud;
  @JsonKey(name: 'BRL', nullable: true)
  final double brl;
  @JsonKey(name: 'CAD', nullable: true)
  final double cad;
  @JsonKey(name: 'CNY', nullable: true)
  final double cny;
  @JsonKey(name: 'HKD', nullable: true)
  final double hkd;
  @JsonKey(name: 'IDR', nullable: true)
  final double idr;
  @JsonKey(name: 'ILS', nullable: true)
  final double ils;
  @JsonKey(name: 'INR', nullable: true)
  final double inr;
  @JsonKey(name: 'KRW', nullable: true)
  final double krw;
  @JsonKey(name: 'MXN', nullable: true)
  final double mxn;
  @JsonKey(name: 'MYR', nullable: true)
  final double myr;
  @JsonKey(name: 'NZD', nullable: true)
  final double nzd;
  @JsonKey(name: 'PHP', nullable: true)
  final double php;
  @JsonKey(name: 'SGD', nullable: true)
  final double sgd;
  @JsonKey(name: 'THB', nullable: true)
  final double thb;
  @JsonKey(name: 'ZAR', nullable: true)
  final double zar;
  @JsonKey(name: 'EUR', nullable: true)
  final double eur;


  factory Rates.fromJson(Map<String, dynamic> json) =>
      _$RatesFromJson(json);
  Map<String, dynamic> toJson() => _$RatesToJson(this);
}