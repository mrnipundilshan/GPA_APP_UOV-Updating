import 'package:flutter/material.dart';
import 'package:newgpa/firstfirst.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: ElevatedButton(
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
      ),
    );
  }
}
