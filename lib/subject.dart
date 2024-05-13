import 'package:flutter/material.dart';
import 'package:newgpa/provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Subject extends StatefulWidget {
  final Function(SubjectState) onSubjectStateCreated;
  final String subname;
  final double credit;
  final Dropdownservice dropdownService;
  late SubjectState subjectState;

  Subject(
      {Key? key,
      required this.subname,
      required this.credit,
      required this.dropdownService,
      required this.onSubjectStateCreated})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  SubjectState createState() {
    subjectState = SubjectState();
    onSubjectStateCreated(subjectState);
    return subjectState;
  }
}

class SubjectState extends State<Subject> {
  double grademarks = 0.0;
  double grademarkscheck = 0.0;
  double aftermultiple = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 380,
      decoration: const BoxDecoration(
        color: Color.fromARGB(64, 97, 149, 91),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text(
            widget.subname,
            style: const TextStyle(
                fontSize: 19.2,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "   Credit = ${widget.credit}",
                style: const TextStyle(fontSize: 18.0),
              ),
              Consumer<Dropdownservice>(
                builder: (context, dr, child) => DropdownButton<String>(
                  value: widget.dropdownService.selectedresult,
                  onChanged: (String? newValue) {
                    String? dropdownValue = newValue;
                    setState(() {
                      widget.dropdownService.selectedresult = newValue;
                      widget.dropdownService.getresult();
                      if (dropdownValue == "A+ / A") {
                        grademarks = 4.0;
                      }
                      if (dropdownValue == "A-") {
                        grademarks = 3.7;
                      }
                      if (dropdownValue == "B+") {
                        grademarks = 3.3;
                      }
                      if (dropdownValue == "B") {
                        grademarks = 3.0;
                      }
                      if (dropdownValue == "B-") {
                        grademarks = 2.7;
                      }
                      if (dropdownValue == "C+") {
                        grademarks = 2.3;
                      }
                      if (dropdownValue == "C") {
                        grademarks = 2.0;
                      }
                      if (dropdownValue == "C-") {
                        grademarks = 1.7;
                      }
                      if (dropdownValue == "D+") {
                        grademarks = 1.3;
                      }
                      if (dropdownValue == "D") {
                        grademarks = 1.0;
                      }
                      if (dropdownValue == "E") {
                        grademarks = 0.0;
                      }

                      grademarkscheck = 1.0;
                      aftermultiple = grademarks * widget.credit;
                    });
                  },
                  items: widget.dropdownService.resultlist
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                  hint: const Text(
                    'Result',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                  ), // Set hint text
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
