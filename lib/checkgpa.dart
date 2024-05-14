import 'package:flutter/material.dart';
import 'package:newgpa/fianresult.dart';
import 'package:newgpa/provider.dart';

class checkresult extends StatefulWidget {
  const checkresult({super.key});

  @override
  State<checkresult> createState() => _checkresultState();
}

class _checkresultState extends State<checkresult> {
  int decimalPlaces = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          if (oitDropdownService.grademarkscheck == 1 &&
              omathsDropdownService.grademarkscheck == 1 &&
              oproDropdownService.grademarkscheck == 1 &&
              owebDropdownService.grademarkscheck == 1 &&
              ostatDropdownService.grademarkscheck == 1) {
            setState(() {
              double oitgpa = oitDropdownService.aftermultiple;
              double mathsgpa = omathsDropdownService.aftermultiple;
              double oprogpa = oproDropdownService.aftermultiple;
              double owebgpa = owebDropdownService.aftermultiple;
              double ostatgpa = ostatDropdownService.aftermultiple;
              double finalo1gpa =
                  (oitgpa + mathsgpa + oprogpa + owebgpa + ostatgpa) / 15;

              String formattedValue = finalo1gpa.toStringAsFixed(decimalPlaces);
              oneoneDropdownService.setsemfinaldouble(formattedValue);
              oneoneDropdownService.setsemfinalnotformattedgpa(finalo1gpa);
            });
          }

          if (ooopDropdownService.grademarkscheck == 1 &&
              odbmsDropdownService.grademarkscheck == 1 &&
              opmDropdownService.grademarkscheck == 1 &&
              opcnDropdownService.grademarkscheck == 1 &&
              omathcDropdownService.grademarkscheck == 1 &&
              oelecDropdownService.grademarkscheck == 1) {
            setState(() {
              double ooopgpa = ooopDropdownService.aftermultiple;
              double odbmsgpa = odbmsDropdownService.aftermultiple;
              double opmgpa = opmDropdownService.aftermultiple;
              double opcgpa = opcnDropdownService.aftermultiple;
              double omathcgpa = omathcDropdownService.aftermultiple;
              double oelecgpa = oelecDropdownService.aftermultiple;

              double finalo2gpa = (ooopgpa +
                      odbmsgpa +
                      opmgpa +
                      opcgpa +
                      omathcgpa +
                      oelecgpa) /
                  15;

              String formattedValue = finalo2gpa.toStringAsFixed(decimalPlaces);
              onetwoDropdownService.setsemfinaldouble(formattedValue);
              onetwoDropdownService.setsemfinalnotformattedgpa(finalo2gpa);
            });
          }

          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  finalresult(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // Background color
        ),
        child: const Text(
          'View GPA',
          style: TextStyle(fontSize: 19),
        ),
      ),
    );
  }
}
