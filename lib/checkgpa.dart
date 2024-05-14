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
              String finalre = formattedValue;
              print(finalo1gpa);
            });

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

          print("pressed");
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
