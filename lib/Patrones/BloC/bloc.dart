
<<<<<<< HEAD
import 'package:schools_maps/Patrones/BloC/Event/event.dart';
import 'Event/event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super (initialState) {
    add(LoadedEvent());
  }

  @override 
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoadedEvent) {
      print('Cargando algo');
      yield
    }
  }
}

=======
import 'package:flutter_bloc/flutter_bloc.dart';
>>>>>>> ad3e89bb7af9eb85c4d1d09d7e4f1eaee1cda9e3
