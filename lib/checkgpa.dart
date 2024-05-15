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
              oneoneDropdownService.finalgpa =
                  (oitgpa + mathsgpa + oprogpa + owebgpa + ostatgpa) / 15;

              String formattedValue =
                  oneoneDropdownService.finalgpa.toStringAsFixed(decimalPlaces);
              oneoneDropdownService.setsemfinaldouble(formattedValue);
              oneoneDropdownService
                  .setsemfinalnotformattedgpa(oneoneDropdownService.finalgpa);
              oneoneDropdownService.count = 1.0;
            });

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

                onetwoDropdownService.finalgpa = (ooopgpa +
                        odbmsgpa +
                        opmgpa +
                        opcgpa +
                        omathcgpa +
                        oelecgpa) /
                    15;

                String formattedValue = onetwoDropdownService.finalgpa
                    .toStringAsFixed(decimalPlaces);
                onetwoDropdownService.setsemfinaldouble(formattedValue);
                onetwoDropdownService
                    .setsemfinalnotformattedgpa(onetwoDropdownService.finalgpa);
                onetwoDropdownService.count = 1.0;
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

                twooneDropdownService.finalgpa =
                    (sdsgpa + ssegpa + swpgpa + svpgpa + scgcgpa) / 15;

                String formattedValue = twooneDropdownService.finalgpa
                    .toStringAsFixed(decimalPlaces);
                twooneDropdownService.setsemfinaldouble(formattedValue);
                twooneDropdownService
                    .setsemfinalnotformattedgpa(twooneDropdownService.finalgpa);
                twooneDropdownService.count = 1.0;
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

                twotwoDropdownService.finalgpa =
                    (smisgpa + sdagpa + swsgpa + sosgpa + sspgpa) / 15;

                String formattedValue = twotwoDropdownService.finalgpa
                    .toStringAsFixed(decimalPlaces);
                twotwoDropdownService.setsemfinaldouble(formattedValue);
                twotwoDropdownService
                    .setsemfinalnotformattedgpa(twotwoDropdownService.finalgpa);
                twotwoDropdownService.count = 1.0;
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

                thirdoneDropdownService.finalgpa =
                    (tkbgpa + tcsgpa + tdigpa + tdsqgpa + tgpgpa + tmcgpa) / 15;

                String formattedValue = thirdoneDropdownService.finalgpa
                    .toStringAsFixed(decimalPlaces);
                thirdoneDropdownService.setsemfinaldouble(formattedValue);
                thirdoneDropdownService.setsemfinalnotformattedgpa(
                    thirdoneDropdownService.finalgpa);
                thirdoneDropdownService.count = 1.0;
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

                thirdtwoDropdownService.finalgpa =
                    (thcgpa + tadbgpa + tecgpa + tpcgpa + tmulcgpa + torgpa) /
                        15;

                String formattedValue = thirdtwoDropdownService.finalgpa
                    .toStringAsFixed(decimalPlaces);
                thirdtwoDropdownService.setsemfinaldouble(formattedValue);
                thirdtwoDropdownService.setsemfinalnotformattedgpa(
                    thirdtwoDropdownService.finalgpa);
                thirdtwoDropdownService.count = 1.0;
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
          } else {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: Color.fromARGB(255, 7, 70, 21),
                title: const Text(
                  "Alert",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30.0),
                ),
                content: const Text(
                  "Fill all subjects results",
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 94, 167, 88),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: const Text(
                        "OK",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 0, 70, 0), // Background color
        ),
        child: const Text(
          'View GPA',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
