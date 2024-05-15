import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/provider.dart';
import 'package:newgpa/secondtwo.dart';
import 'package:newgpa/thirdtwo.dart';
import 'subject.dart';

class thirdone extends StatefulWidget {
  const thirdone({Key? key}) : super(key: key);

  @override
  State<thirdone> createState() => _thirdoneState();
}

class _thirdoneState extends State<thirdone> {
  // Create separate instances of Dropdownservice

  String finalre = "--";
  int decimalPlaces = 4;

  late SubjectState tkb;
  late SubjectState tcs;
  late SubjectState tmc;
  late SubjectState tdi;
  late SubjectState tdsq;
  late SubjectState tgp;

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
            "3RD YEAR 1ST SEMESTER",
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
                subname: "Knowledge Based Systems and L. P.",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.tkb = subjectState;
                },
                dropdownService: tkbDropdownService,
              ),
              Subject(
                subname: "Computer Security",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tcs = subjectState;
                },
                dropdownService: tcsDropdownService,
              ),
              Subject(
                subname: "Mobile Communication and Computing",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.tmc = subjectState;
                },
                dropdownService: tmcDropdownService,
              ),
              Subject(
                subname: "Digital Image Processing",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.tdi = subjectState;
                },
                dropdownService: tdiDropdownService,
              ),
              Subject(
                subname: "Software Quality Assurance",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tdsq = subjectState;
                },
                dropdownService: tdsqDropdownService,
              ),
              Subject(
                subname: "Group Project",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tgp = subjectState;
                },
                dropdownService: tgpDropdownService,
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
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 0, 70, 0), // Background color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          secondtwo(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_outlined),
                  ],
                ),
              ),
              checkresult(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 0, 70, 0), // Background color
                ),
                onPressed: () {
                  if (tkbDropdownService.grademarkscheck == 1 &&
                      tcsDropdownService.grademarkscheck == 1 &&
                      tmcDropdownService.grademarkscheck == 1 &&
                      tdiDropdownService.grademarkscheck == 1 &&
                      tdsqDropdownService.grademarkscheck == 1 &&
                      tgpDropdownService.grademarkscheck == 1) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            thirdtwo(),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
