import 'package:flutter/material.dart';

final Dropdownservice oitDropdownService = Dropdownservice();
final Dropdownservice omathsDropdownService = Dropdownservice();
final Dropdownservice oproDropdownService = Dropdownservice();
final Dropdownservice owebDropdownService = Dropdownservice();
final Dropdownservice ostatDropdownService = Dropdownservice();

final Dropdownservice oneoneDropdownService = Dropdownservice();

final Dropdownservice ooopDropdownService = Dropdownservice();
final Dropdownservice odbmsDropdownService = Dropdownservice();
final Dropdownservice opmDropdownService = Dropdownservice();
final Dropdownservice opcnDropdownService = Dropdownservice();
final Dropdownservice oelecDropdownService = Dropdownservice();
final Dropdownservice omathcDropdownService = Dropdownservice();

final Dropdownservice onetwoDropdownService = Dropdownservice();

final Dropdownservice sdsDropdownService = Dropdownservice();
final Dropdownservice sseDropdownService = Dropdownservice();
final Dropdownservice swpDropdownService = Dropdownservice();
final Dropdownservice svpDropdownService = Dropdownservice();
final Dropdownservice scgDropdownService = Dropdownservice();

final Dropdownservice twooneDropdownService = Dropdownservice();

final Dropdownservice smisDropdownService = Dropdownservice();
final Dropdownservice sdaDropdownService = Dropdownservice();
final Dropdownservice swsDropdownService = Dropdownservice();
final Dropdownservice sosDropdownService = Dropdownservice();
final Dropdownservice sspDropdownService = Dropdownservice();

final Dropdownservice twotwoDropdownService = Dropdownservice();

final Dropdownservice tkbDropdownService = Dropdownservice();
final Dropdownservice tcsDropdownService = Dropdownservice();
final Dropdownservice tmcDropdownService = Dropdownservice();
final Dropdownservice tdiDropdownService = Dropdownservice();
final Dropdownservice tdsqDropdownService = Dropdownservice();
final Dropdownservice tgpDropdownService = Dropdownservice();

final Dropdownservice thirdoneDropdownService = Dropdownservice();

class Dropdownservice extends ChangeNotifier {
  var resultlist = [
    'A+ / A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D+',
    'D',
    'E'
  ];
  var selectedresult;
  double grademarkscheck = 0.0;
  double grademarks = 0.0;
  double aftermultiple = 0.0;
  String semfinaldouble = "-";
  double semfinalnotformattedgpa = 0.0;

  setresultvalue(value) {
    selectedresult = value;
    notifyListeners();
  }

  setgrademarkscheck() {
    grademarkscheck = 1.0;
  }

  viewgrademarkscheck() {
    print(grademarkscheck);
  }

  setgrademarks(marks) {
    grademarks = marks;
  }

  viewgrademarks() {
    print(grademarks);
  }

  getresult() {
    print(selectedresult);
  }

  setsemfinalnotformattedgpa(value) {
    semfinalnotformattedgpa = value;
    notifyListeners();
  }

  setsemfinaldouble(value) {
    semfinaldouble = value;
    notifyListeners();
  }
}
