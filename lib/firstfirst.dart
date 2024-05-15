import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/firstsecond.dart';
import 'package:newgpa/provider.dart';
import 'subject.dart';

class firstfirst extends StatefulWidget {
  const firstfirst({Key? key}) : super(key: key);

  @override
  State<firstfirst> createState() => _firstfirstState();
}

class _firstfirstState extends State<firstfirst> {
  late SubjectState oit;
  late SubjectState omaths;
  late SubjectState opro;
  late SubjectState oweb;
  late SubjectState ostat;

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
            "1ST YEAR 1ST SEMESTER",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(13),
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
                subname: "Fundamentals of IT",
                credit: 3,
                dropdownService: oitDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.oit = subjectState;
                },
              ),
              Subject(
                subname: "Foundation of Mathematics",
                credit: 2,
                dropdownService: omathsDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.omaths = subjectState;
                },
              ),
              Subject(
                subname: "Fundamentals of Programming",
                credit: 4,
                dropdownService: oproDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.opro = subjectState;
                },
              ),
              Subject(
                subname: "Fundamentals of Web Programming",
                credit: 4,
                dropdownService: owebDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.oweb = subjectState;
                },
              ),
              Subject(
                subname: "Essentials of Statistics",
                credit: 2,
                dropdownService: ostatDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.ostat = subjectState;
                },
              ),
              const Text(
                "*Click Reset button before calculating another GPA",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(0),
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
                  setState(() {
                    oitDropdownService.resetall();
                    omathsDropdownService.resetall();
                    oproDropdownService.resetall();
                    owebDropdownService.resetall();
                    ostatDropdownService.resetall();

                    oneoneDropdownService.resetall();

                    ooopDropdownService.resetall();
                    odbmsDropdownService.resetall();
                    opmDropdownService.resetall();
                    opcnDropdownService.resetall();
                    oelecDropdownService.resetall();
                    omathcDropdownService.resetall();

                    onetwoDropdownService.resetall();

                    sdsDropdownService.resetall();
                    sseDropdownService.resetall();
                    swpDropdownService.resetall();
                    svpDropdownService.resetall();
                    scgDropdownService.resetall();

                    twooneDropdownService.resetall();

                    smisDropdownService.resetall();
                    sdaDropdownService.resetall();
                    swsDropdownService.resetall();
                    sosDropdownService.resetall();
                    sspDropdownService.resetall();

                    twotwoDropdownService.resetall();

                    tkbDropdownService.resetall();
                    tcsDropdownService.resetall();
                    tmcDropdownService.resetall();
                    tdiDropdownService.resetall();
                    tdsqDropdownService.resetall();
                    tgpDropdownService.resetall();

                    thirdoneDropdownService.resetall();

                    thcDropdownService.resetall();
                    tadbDropdownService.resetall();
                    tecDropdownService.resetall();
                    tpcDropdownService.resetall();
                    tmulcDropdownService.resetall();
                    torDropdownService.resetall();

                    thirdtwoDropdownService.resetall();
                  });
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.refresh_outlined,
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
                  if (oitDropdownService.grademarkscheck == 1 &&
                      omathsDropdownService.grademarkscheck == 1 &&
                      oproDropdownService.grademarkscheck == 1 &&
                      owebDropdownService.grademarkscheck == 1 &&
                      ostatDropdownService.grademarkscheck == 1) {
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
