import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/firstfirst.dart';
import 'package:newgpa/firstsecond.dart';
import 'package:newgpa/provider.dart';
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
                credit: 2,
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
                  if (ooopDropdownService.grademarkscheck == 1 &&
                      odbmsDropdownService.grademarkscheck == 1 &&
                      opmDropdownService.grademarkscheck == 1 &&
                      opcnDropdownService.grademarkscheck == 1 &&
                      omathcDropdownService.grademarkscheck == 1 &&
                      oelecDropdownService.grademarkscheck == 1) {
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
