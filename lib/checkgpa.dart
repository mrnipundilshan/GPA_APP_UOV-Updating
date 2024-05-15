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

          if (sdsDropdownService.grademarkscheck == 1 &&
              sseDropdownService.grademarkscheck == 1 &&
              swpDropdownService.grademarkscheck == 1 &&
              svpDropdownService.grademarkscheck == 1 &&
              scgDropdownService.grademarkscheck == 1) {
            setState(() {
              double sdsgpa = sdsDropdownService.aftermultiple;
              double ssegpa = sseDropdownService.aftermultiple;
              double swpgpa = swpDropdownService.aftermultiple;
              double svpgpa = svpDropdownService.aftermultiple;
              double scgcgpa = scgDropdownService.aftermultiple;

              double finals1gpa =
                  (sdsgpa + ssegpa + swpgpa + svpgpa + scgcgpa) / 15;

              String formattedValue = finals1gpa.toStringAsFixed(decimalPlaces);
              twooneDropdownService.setsemfinaldouble(formattedValue);
              twooneDropdownService.setsemfinalnotformattedgpa(finals1gpa);
            });
          }

          if (smisDropdownService.grademarkscheck == 1 &&
              sdaDropdownService.grademarkscheck == 1 &&
              swsDropdownService.grademarkscheck == 1 &&
              sosDropdownService.grademarkscheck == 1 &&
              sspDropdownService.grademarkscheck == 1) {
            setState(() {
              double smisgpa = smisDropdownService.aftermultiple;
              double sdagpa = sdaDropdownService.aftermultiple;
              double swsgpa = swsDropdownService.aftermultiple;
              double sosgpa = sosDropdownService.aftermultiple;
              double sspgpa = sspDropdownService.aftermultiple;

              double finals2gpa =
                  (smisgpa + sdagpa + swsgpa + sosgpa + sspgpa) / 15;

              String formattedValue = finals2gpa.toStringAsFixed(decimalPlaces);
              twotwoDropdownService.setsemfinaldouble(formattedValue);
              twotwoDropdownService.setsemfinalnotformattedgpa(finals2gpa);
            });
          }

          if (tkbDropdownService.grademarkscheck == 1 &&
              tcsDropdownService.grademarkscheck == 1 &&
              tmcDropdownService.grademarkscheck == 1 &&
              tdiDropdownService.grademarkscheck == 1 &&
              tdsqDropdownService.grademarkscheck == 1 &&
              tgpDropdownService.grademarkscheck == 1) {
            setState(() {
              double tkbgpa = tkbDropdownService.aftermultiple;
              double tcsgpa = tcsDropdownService.aftermultiple;
              double tmcgpa = tmcDropdownService.aftermultiple;
              double tdigpa = tdiDropdownService.aftermultiple;
              double tdsqgpa = tdsqDropdownService.aftermultiple;
              double tgpgpa = tgpDropdownService.aftermultiple;

              double finalt1gpa =
                  (tkbgpa + tcsgpa + tdigpa + tdsqgpa + tgpgpa + tmcgpa) / 15;

              String formattedValue = finalt1gpa.toStringAsFixed(decimalPlaces);
              thirdoneDropdownService.setsemfinaldouble(formattedValue);
              thirdoneDropdownService.setsemfinalnotformattedgpa(finalt1gpa);
            });
          }

          if (thcDropdownService.grademarkscheck == 1 &&
              tadbDropdownService.grademarkscheck == 1 &&
              tecDropdownService.grademarkscheck == 1 &&
              tpcDropdownService.grademarkscheck == 1 &&
              tmulcDropdownService.grademarkscheck == 1 &&
              torDropdownService.grademarkscheck == 1) {
            setState(() {
              double thcgpa = thcDropdownService.aftermultiple;
              double tadbgpa = tadbDropdownService.aftermultiple;
              double tecgpa = tecDropdownService.aftermultiple;
              double tpcgpa = tpcDropdownService.aftermultiple;
              double tmulcgpa = tmulcDropdownService.aftermultiple;
              double torgpa = torDropdownService.aftermultiple;

              double finalt2gpa =
                  (thcgpa + tadbgpa + tecgpa + tpcgpa + tmulcgpa + torgpa) / 15;

              String formattedValue = finalt2gpa.toStringAsFixed(decimalPlaces);
              thirdtwoDropdownService.setsemfinaldouble(formattedValue);
              thirdtwoDropdownService.setsemfinalnotformattedgpa(finalt2gpa);
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
          backgroundColor: Color.fromARGB(255, 0, 70, 0), // Background color
        ),
        child: const Text(
          'View GPA',
          style: TextStyle(fontSize: 19),
        ),
      ),
    );
  }
}
