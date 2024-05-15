import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/provider.dart';
import 'package:newgpa/thirdone.dart';
import 'subject.dart';

class thirdtwo extends StatefulWidget {
  const thirdtwo({Key? key}) : super(key: key);

  @override
  State<thirdtwo> createState() => _thirdtwoState();
}

class _thirdtwoState extends State<thirdtwo> {
  // Create separate instances of Dropdownservice

  String finalre = "--";
  int decimalPlaces = 4;

  late SubjectState thc;
  late SubjectState tadb;
  late SubjectState tec;
  late SubjectState tpc;
  late SubjectState tmulc;
  late SubjectState tor;

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
            "3RD YEAR 2ND SEMESTER",
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
                subname: "Human Computer Interaction",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.thc = subjectState;
                },
                dropdownService: thcDropdownService,
              ),
              Subject(
                subname: "Advanced Database Mang. Sys.",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.tadb = subjectState;
                },
                dropdownService: tadbDropdownService,
              ),
              Subject(
                subname: "E-Commerce",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tec = subjectState;
                },
                dropdownService: tecDropdownService,
              ),
              Subject(
                subname: "Parallel Computing",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.tpc = subjectState;
                },
                dropdownService: tpcDropdownService,
              ),
              Subject(
                subname: "Multimedia Computing",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tmulc = subjectState;
                },
                dropdownService: tmulcDropdownService,
              ),
              Subject(
                subname: "Operations Research",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.tor = subjectState;
                },
                dropdownService: torDropdownService,
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
                          thirdone(),
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
              SizedBox(width: 72),
            ],
          ),
        ),
      ),
    );
  }
}
