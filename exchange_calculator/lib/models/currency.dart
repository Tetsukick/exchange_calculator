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

  String get unit {
    switch(this) {
      case Currency.AUD:
        return 'AUD';
      case Currency.BGN:
        return 'BGN';
      case Currency.BRL:
        return 'BRL';
      case Currency.CAD:
        return 'CAD';
      case Currency.CHF:
        return 'CHF';
      case Currency.CNY:
        return 'CNY';
      case Currency.CZK:
        return 'CZK';
      case Currency.DKK:
        return 'DKK';
      case Currency.EUR:
        return 'EUR';
      case Currency.GBP:
        return 'GBP';
      case Currency.HKD:
        return 'HKD';
      case Currency.HRK:
        return 'HRK';
      case Currency.HUF:
        return 'HUF';
      case Currency.IDR:
        return 'IDR';
      case Currency.ILS:
        return 'ILS';
      case Currency.INR:
        return 'INR';
      case Currency.ISK:
        return 'ISK';
      case Currency.JPY:
        return 'JPY';
      case Currency.KRW:
        return 'KRW';
      case Currency.MXN:
        return 'MXN';
      case Currency.MYR:
        return 'MYR';
      case Currency.NOK:
        return 'NOK';
      case Currency.NZD:
        return 'NZD';
      case Currency.PHP:
        return 'PHP';
      case Currency.PLN:
        return 'PLN';
      case Currency.RON:
        return 'RON';
      case Currency.RUB:
        return 'RUB';
      case Currency.SEK:
        return 'SEK';
      case Currency.SGD:
        return 'SGD';
      case Currency.THB:
        return 'THB';
      case Currency.TRY:
        return 'TRY';
      case Currency.USD:
        return 'USD';
      case Currency.ZAR:
        return 'ZAR';
    }
  }

  String get assetPath {
    switch(this) {
      case Currency.AUD:
        return '';
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
        return 'assets/national_flag/japan.svg';
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
        return 'assets/national_flag/usa.svg';
      case Currency.ZAR:
        return 'South African rand';
    }
  }
}