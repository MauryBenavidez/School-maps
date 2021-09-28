
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

