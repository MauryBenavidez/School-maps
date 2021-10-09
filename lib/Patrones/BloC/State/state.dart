import 'package:schools_maps/Patrones/BloC/State/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class LoginEvent extends Equatable {
  final bool loading;
  final List<dynamic> algoNuevo;

  LoginEvent({required this.loading, required this.algoNuevo});

  static LoginEvent initialState() => LoginEvent(loading: false, algoNuevo: []);

 LoginEvent copiarAlgo({bool loading: true, List<dynamic> algoNuevo}) {
    return LoginEvent(
        loading: loading ?? this.loading,
        algoNuevo: algoNuevo ?? this.algoNuevo);
  }

  @override
  List<Object> get props => [this.loading, this.algoNuevo];
}

