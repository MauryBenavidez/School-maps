import 'package:schools_maps/Patrones/BloC/Event/event.dart';
import 'Event/event.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super (initialState) {
    add(LoadedLoginEvent());
  }

  @override 
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoadedLoginEvent) {
      print('Cargando algo');
      yield this.state.copiarAlgo(loading: true, algoNuevo: []);
      await Future.delayed(Duration(seconds: 2));
    } else if (event is NotLoadedLoginEvent) {
      print('No se pudo: ${event.position}');
    }
  }
}




