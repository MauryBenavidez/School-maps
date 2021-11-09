import 'package:schools_maps/Patrones/BloC/State/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


class LoginState extends Equatable {
  final bool loading;
  final List<dynamic> algoNuevo;

  LoginState({ required this.loading,  required this.algoNuevo});

  static LoginState initialState() => LoginState(loading: false, algoNuevo: []);

 LoginState copiarAlgo({bool loading: true, required List<dynamic> algoNuevo}) {
    return LoginState(
        loading: loading,
        algoNuevo: algoNuevo);
  }

  @override
  List<Object> get props => [this.loading, this.algoNuevo];
}

class RegistState extends Equatable {
  final bool loading;
  final List<dynamic> algoNuevo;

  RegistState({ required this.loading,  required this.algoNuevo});

  static RegistState initialState() => RegistState(loading: false, algoNuevo: []);

 LoginState copiarAlgo({bool loading: true, required List<dynamic> algoNuevo}) {
    return LoginState(
        loading: loading,
        algoNuevo: algoNuevo);
  }

  @override
  List<Object> get props => [this.loading, this.algoNuevo];
}