import 'package:bloc/bloc.dart';
import 'package:flutter_cubit_app/cubit/app_cubit_states.dart';
import 'package:flutter_cubit_app/services/data_services.dart';

import '../model/data_model.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialStates()){
    emit(WelcomeStates());
  }
  final DataServices data;
  late final places;
  void getData()async{
    try{
      emit(LoadingStates());
      places = await data.getInfo();
      emit(LoadedStates(places));
    }catch(e){

    }
  }

  detailPage(DataModel data){
    emit(DetailState(data));
  }

  goHome(){
    emit(LoadedStates(places));
  }

}