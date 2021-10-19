import 'package:schools_maps/Patrones/BloC/State/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


class LoginState extends Equatable {
  final bool loading;
  final List<dynamic> algoNuevo;

  LoginState({ this.loading,  this.algoNuevo});

  static LoginState initialState() => LoginState(loading: false, algoNuevo: []);

 LoginState copiarAlgo({bool loading: true, List<dynamic> algoNuevo}) {
    return LoginState(
        loading: loading ?? this.loading,
        algoNuevo: algoNuevo ?? this.algoNuevo);
  }

  @override
  List<Object> get props => [this.loading, this.algoNuevo];
}




