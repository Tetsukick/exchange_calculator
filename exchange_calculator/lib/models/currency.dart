import 'dart:html';

enum Currency {
  USD,
  JPY,
  BGN,
  CZK,
  DKK,
  GBP,
  HUF,
  PLN,
  RON,
  SEK,
  CHF,
  ISK,
  NOK,
  HRK,
  RUB,
  TRY,
  AUD,
  BRL,
  CAD,
  CNY,
  HKD,
  IDR,
  ILS,
  INR,
  KRW,
  MXN,
  MYR,
  NZD,
  PHP,
  SGD,
  THB,
  ZAR,
  EUR
}

extension CurrencyModel on Currency {
  String get name {
    switch(this) {
      case Currency.AUD:
        return 'Australian dollar';
      case Currency.BGN:
        return 'Bulgarian lev';
      case Currency.BRL:
        return 'Brazilian real';
      case Currency.CAD:
        return 'Canadian dollar';
      case Currency.CHF:
        return 'Swiss franc';
      case Currency.CNY:
        return 'Chinese yuan renminbi';
      case Currency.CZK:
        return 'Czech koruna';
      case Currency.DKK:
        return 'Danish krone';
      case Currency.EUR:
        return 'euro';
      case Currency.GBP:
        return 'Pound sterling';
      case Currency.HKD:
        return 'Hong Kong dollar';
      case Currency.HRK:
        return 'Croatian kuna';
      case Currency.HUF:
        return 'Hungarian forint';
      case Currency.IDR:
        return 'Indonesian rupiah';
      case Currency.ILS:
        return 'Israeli shekel';
      case Currency.INR:
        return 'Indian rupee';
      case Currency.ISK:
        return 'Icelandic krona';
      case Currency.JPY:
        return 'Japanese yen';
      case Currency.KRW:
        return 'South Korean won';
      case Currency.MXN:
        return 'Mexican peso';
      case Currency.MYR:
        return 'Malaysian ringgit';
      case Currency.NOK:
        return 'Norwegian krone';
      case Currency.NZD:
        return 'New Zealand dollar';
      case Currency.PHP:
        return 'Philippine peso';
      case Currency.PLN:
        return 'Polish zloty';
      case Currency.RON:
        return 'Romanian leu';
      case Currency.RUB:
        return 'Russian rouble';
      case Currency.SEK:
        return 'Swedish krona';
      case Currency.SGD:
        return 'Singapore dollar';
      case Currency.THB:
        return 'Thai baht';
      case Currency.TRY:
        return 'Turkish lira';
      case Currency.USD:
        return 'US dollar';
      case Currency.ZAR:
        return 'South African rand';
    }
  }
}