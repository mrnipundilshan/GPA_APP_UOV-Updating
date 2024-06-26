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

final Dropdownservice thcDropdownService = Dropdownservice();
final Dropdownservice tadbDropdownService = Dropdownservice();
final Dropdownservice tecDropdownService = Dropdownservice();
final Dropdownservice tpcDropdownService = Dropdownservice();
final Dropdownservice tmulcDropdownService = Dropdownservice();
final Dropdownservice torDropdownService = Dropdownservice();

final Dropdownservice thirdtwoDropdownService = Dropdownservice();

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
  double count = 0;

  double finalgpa = 0.0;

  setresultvalue(value) {
    selectedresult = value;
    notifyListeners();
  }

  setgrademarkscheck() {
    grademarkscheck = 1.0;
    notifyListeners();
  }

  viewgrademarkscheck() {
    print(grademarkscheck);
    notifyListeners();
  }

  setgrademarks(marks) {
    grademarks = marks;
    notifyListeners();
  }

  viewgrademarks() {
    print(grademarks);
    notifyListeners();
  }

  getresult() {
    print(selectedresult);
    notifyListeners();
  }

  setsemfinalnotformattedgpa(value) {
    semfinalnotformattedgpa = value;
    notifyListeners();
  }

  setsemfinaldouble(value) {
    semfinaldouble = value;
    notifyListeners();
  }

  setfinalegpa(value) {
    finalgpa = value;
    notifyListeners();
  }

  resetall() {
    selectedresult = null;
    grademarkscheck = 0.0;
    grademarks = 0.0;
    aftermultiple = 0.0;
    semfinaldouble = "-";
    semfinalnotformattedgpa = 0.0;
    finalgpa = 0.0;
    count = 0.0;
    notifyListeners();
  }
}
