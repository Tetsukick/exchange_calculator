
import 'package:exchangecalculator/models/currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyDialog {
  Future<Currency> showCurrencyDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
            title: Text("Select Currency"),
            children: _currencyOptions(context),
        );
      },
    );
  }

  List<SimpleDialogOption> _currencyOptions(BuildContext context) {
    final List<SimpleDialogOption> options = [];
    Currency.values.forEach((element) {
      options.add(SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context, element);
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              element.assetPath,
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            element.unit,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Theme.of(context).textTheme.bodyText1.color,
            ),
          ),
        ),
      ));
    });

    return options;
  }
}