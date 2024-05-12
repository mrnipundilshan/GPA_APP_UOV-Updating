import 'package:flutter/material.dart';
import 'package:newgpa/firstfirst.dart';
import 'package:newgpa/provider.dart';
import 'subject.dart';

class firstsecond extends StatefulWidget {
  const firstsecond({Key? key}) : super(key: key);

  @override
  State<firstsecond> createState() => _firstsecondState();
}

class _firstsecondState extends State<firstsecond> {
  // Create separate instances of Dropdownservice
  final Dropdownservice ooopDropdownService = Dropdownservice();
  final Dropdownservice odbmsDropdownService = Dropdownservice();
  final Dropdownservice opmDropdownService = Dropdownservice();
  final Dropdownservice opcnDropdownService = Dropdownservice();
  final Dropdownservice oelecDropdownService = Dropdownservice();
  final Dropdownservice omathcDropdownService = Dropdownservice();

  String finalre = "--";
  int decimalPlaces = 4;

  late SubjectState ooop;
  late SubjectState odbms;
  late SubjectState opm;
  late SubjectState opcn;
  late SubjectState oelec;
  late SubjectState omathc;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 94, 167, 88),
          centerTitle: true,
          title: const Text(
            "1ST YEAR 2ND SEMESTER",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(13),
          width: 420,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 38, 46, 37),
              image: DecorationImage(
                  image: AssetImage('images/bg1.png'), opacity: 0.08)),
          alignment: Alignment.topCenter,
          child: ListView(
            //scrollDirection: Axis.vertical,
            children: [
              Subject(
                subname: "Object Oriented Design and Programming",
                credit: 4,
                onSubjectStateCreated: (subjectState) {
                  this.ooop = subjectState;
                },
                dropdownService: ooopDropdownService,
              ),
              Subject(
                subname: "Database Management Systems",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.odbms = subjectState;
                },
                dropdownService: odbmsDropdownService,
              ),
              Subject(
                subname: "Project Management",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.opm = subjectState;
                },
                dropdownService: opmDropdownService,
              ),
              Subject(
                subname: "Principles of Computer Networks",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.opcn = subjectState;
                },
                dropdownService: opcnDropdownService,
              ),
              Subject(
                subname: "Electronics and Device Interfacing",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.oelec = subjectState;
                },
                dropdownService: oelecDropdownService,
              ),
              Subject(
                subname: "Mathematics for Computing",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.omathc = subjectState;
                },
                dropdownService: omathcDropdownService,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 75, 150, 68),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          firstfirst(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ),
                  );
                },
                child: Text('Previous Sem'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get GPA'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          firstsecond(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ),
                  );
                },
                child: Text('Next Sem'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container button2(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          if (ooop.grademarkscheck == 1 &&
              odbms.grademarkscheck == 1 &&
              opm.grademarkscheck == 1 &&
              opcn.grademarkscheck == 1 &&
              omathc.grademarkscheck == 1 &&
              oelec.grademarkscheck == 1) {
            setState(() {
              double ooopgpa = ooop.aftermultiple;
              double odbmsgpa = odbms.aftermultiple;
              double opmgpa = opm.aftermultiple;
              double opcgpa = opcn.aftermultiple;
              double omathcgpa = omathc.aftermultiple;
              double oelecgpa = oelec.aftermultiple;
              double finalo2gpa = (ooopgpa +
                      odbmsgpa +
                      opmgpa +
                      opcgpa +
                      omathcgpa +
                      oelecgpa) /
                  15;

              String formattedValue = finalo2gpa.toStringAsFixed(decimalPlaces);
              finalre = formattedValue;
            });
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
