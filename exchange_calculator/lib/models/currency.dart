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
        return 'assets/national_flag/australia.svg';
      case Currency.BGN:
        return 'assets/national_flag/bulgaria.svg';
      case Currency.BRL:
        return 'assets/national_flag/brazil.svg';
      case Currency.CAD:
        return 'assets/national_flag/canada.svg';
      case Currency.CHF:
        return 'assets/national_flag/swiss.svg';
      case Currency.CNY:
        return 'assets/national_flag/china.svg';
      case Currency.CZK:
        return 'assets/national_flag/czechRepublic.svg';
      case Currency.DKK:
        return 'assets/national_flag/denmark.svg';
      case Currency.EUR:
        return 'assets/national_flag/eu.svg';
      case Currency.GBP:
        return 'assets/national_flag/uk.svg';
      case Currency.HKD:
        return 'assets/national_flag/hongKong.svg';
      case Currency.HRK:
        return 'assets/national_flag/croatia.svg';
      case Currency.HUF:
        return 'assets/national_flag/hungary.svg';
      case Currency.IDR:
        return 'assets/national_flag/indonesia.svg';
      case Currency.ILS:
        return 'assets/national_flag/israel.svg';
      case Currency.INR:
        return 'assets/national_flag/india.svg';
      case Currency.ISK:
        return 'assets/national_flag/iceland.svg';
      case Currency.JPY:
        return 'assets/national_flag/japan.svg';
      case Currency.KRW:
        return 'assets/national_flag/southKorea.svg';
      case Currency.MXN:
        return 'assets/national_flag/mexico.svg';
      case Currency.MYR:
        return 'assets/national_flag/malaysia.svg';
      case Currency.NOK:
        return 'assets/national_flag/norway.svg';
      case Currency.NZD:
        return 'assets/national_flag/newZealand.svg';
      case Currency.PHP:
        return 'assets/national_flag/philippine.svg';
      case Currency.PLN:
        return 'assets/national_flag/poland.svg';
      case Currency.RON:
        return 'assets/national_flag/romania.svg';
      case Currency.RUB:
        return 'assets/national_flag/russia.svg';
      case Currency.SEK:
        return 'assets/national_flag/sweden.svg';
      case Currency.SGD:
        return 'assets/national_flag/singapore.svg';
      case Currency.THB:
        return 'assets/national_flag/thailand.svg';
      case Currency.TRY:
        return 'assets/national_flag/turkey.svg';
      case Currency.USD:
        return 'assets/national_flag/usa.svg';
      case Currency.ZAR:
        return 'assets/national_flag/southAfrica.svg';
    }
  }

  static Currency unitToCurrency(String unit) {
    switch(unit) {
      case 'AUD':
        return Currency.AUD;
      case 'BGN':
        return Currency.BGN;
      case 'BRL':
        return Currency.BRL;
      case 'CAD':
        return Currency.CAD;
      case 'CHF':
        return Currency.CHF;
      case 'CNY':
        return Currency.CNY;
      case 'CZK':
        return Currency.CZK;
      case 'DKK':
        return Currency.DKK;
      case 'EUR':
        return Currency.EUR;
      case 'GBP':
        return Currency.GBP;
      case 'HKD':
        return Currency.HKD;
      case 'HRK':
        return Currency.HRK;
      case 'HUF':
        return Currency.HUF;
      case 'IDR':
        return Currency.IDR;
      case 'ILS':
        return Currency.ILS;
      case 'INR':
        return Currency.INR;
      case 'ISK':
        return Currency.ISK;
      case 'JPY':
        return Currency.JPY;
      case 'KRW':
        return Currency.KRW;
      case 'MXN':
        return Currency.MXN;
      case 'MYR':
        return Currency.MYR;
      case 'NOK':
        return Currency.NOK;
      case 'NZD':
        return Currency.NZD;
      case 'PHP':
        return Currency.PHP;
      case 'PLN':
        return Currency.PLN;
      case 'RON':
        return Currency.RON;
      case 'RUB':
        return Currency.RUB;
      case 'SEK':
        return Currency.SEK;
      case 'SGD':
        return Currency.SGD;
      case 'THB':
        return Currency.THB;
      case 'TRY':
        return Currency.TRY;
      case 'USD':
        return Currency.USD;
      case 'ZAR':
        return Currency.ZAR;
      default:
        return Currency.JPY;
    }
  }
}