import 'package:equatable/equatable.dart';
import 'package:flutter_cubit_app/model/data_model.dart';

abstract class CubitStates extends Equatable{}

class InitialStates extends CubitStates{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class WelcomeStates extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadingStates extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadedStates extends CubitStates {
  LoadedStates(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];

}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];

}