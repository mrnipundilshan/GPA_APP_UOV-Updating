import 'package:flutter/material.dart';

final Dropdownservice oitDropdownService = Dropdownservice();
final Dropdownservice omathsDropdownService = Dropdownservice();
final Dropdownservice oproDropdownService = Dropdownservice();
final Dropdownservice owebDropdownService = Dropdownservice();
final Dropdownservice ostatDropdownService = Dropdownservice();

final Dropdownservice ooopDropdownService = Dropdownservice();
final Dropdownservice odbmsDropdownService = Dropdownservice();
final Dropdownservice opmDropdownService = Dropdownservice();
final Dropdownservice opcnDropdownService = Dropdownservice();
final Dropdownservice oelecDropdownService = Dropdownservice();
final Dropdownservice omathcDropdownService = Dropdownservice();

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
}
