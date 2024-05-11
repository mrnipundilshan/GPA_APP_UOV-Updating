import 'package:flutter/material.dart';
import 'package:newgpa/firstfirst.dart';
import 'package:newgpa/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Dropdownservice(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "GPA APP",
          theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
          ),
          home: firstfirst(),
        ),
      ),
    );
  }
}
