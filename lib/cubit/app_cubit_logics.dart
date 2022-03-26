import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/cubit/app_cubit_states.dart';
import 'package:flutter_cubit_app/cubit/app_cubits.dart';
import 'package:flutter_cubit_app/pages/detail_page.dart';
import 'package:flutter_cubit_app/pages/home_page.dart';
import 'package:flutter_cubit_app/pages/welcome_page.dart';

import '../pages/navpages/main_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is DetailState){
            return DetailPage();
          }if(state is WelcomeStates){
            return WelcomePage();
          }if(state is LoadedStates){
            return MainPage();
          } if(state is LoadingStates){
            return Center(child: CircularProgressIndicator(),);
          }else{
            return Container();
          }
        },
      ),
    );
  }
}
