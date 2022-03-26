import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/cubit/app_cubit_logics.dart';
import 'package:flutter_cubit_app/cubit/app_cubits.dart';
import 'package:flutter_cubit_app/pages/detail_page.dart';
import 'package:flutter_cubit_app/pages/navpages/main_page.dart';
import 'package:flutter_cubit_app/pages/welcome_page.dart';
import 'package:flutter_cubit_app/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (contex)=>AppCubits(
            data:DataServices(),
          ),
          child: AppCubitLogics(),
        )
    );
  }
}