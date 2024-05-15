import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/firstsecond.dart';
import 'package:newgpa/provider.dart';
import 'package:newgpa/secondtwo.dart';
import 'subject.dart';

class secondone extends StatefulWidget {
  const secondone({Key? key}) : super(key: key);

  @override
  State<secondone> createState() => _secondoneState();
}

class _secondoneState extends State<secondone> {
  // Create separate instances of Dropdownservice

  int decimalPlaces = 4;

  late SubjectState sds;
  late SubjectState sse;
  late SubjectState swp;
  late SubjectState svp;
  late SubjectState scg;

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
            "2ND YEAR 1ST SEMESTER",
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
                subname: "Data Structures",
                credit: 4,
                onSubjectStateCreated: (subjectState) {
                  this.sds = subjectState;
                },
                dropdownService: sdsDropdownService,
              ),
              Subject(
                subname: "Software Engineering",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.sse = subjectState;
                },
                dropdownService: sseDropdownService,
              ),
              Subject(
                subname: "Advanced Web Programming",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.swp = subjectState;
                },
                dropdownService: swpDropdownService,
              ),
              Subject(
                subname: "Visual Programming",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.svp = subjectState;
                },
                dropdownService: svpDropdownService,
              ),
              Subject(
                subname: "Computer Graphics",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.scg = subjectState;
                },
                dropdownService: scgDropdownService,
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
                          firstsecond(),
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
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
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
                  if (sdsDropdownService.grademarkscheck == 1 &&
                      sseDropdownService.grademarkscheck == 1 &&
                      swpDropdownService.grademarkscheck == 1 &&
                      svpDropdownService.grademarkscheck == 1 &&
                      scgDropdownService.grademarkscheck == 1) {
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
                  } else {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: Color.fromARGB(255, 7, 70, 21),
                        title: const Text(
                          "Alert",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30.0),
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
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
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
