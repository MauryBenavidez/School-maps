import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_maps/UX/login_page.dart';

class LoginEvent {}

class LoadedLoginEvent extends LoginEvent {}

class NotLoadedLoginEvent extends LoginEvent {
  final int position;
  NotLoadedLoginEvent(this.position);
}

class RegistEvent {
  
}

class LoadedRegistEvent extends RegistEvent {}

class NotLoadedRegistEvent extends RegistEvent {
  final int position;
  NotLoadedRegistEvent(this.position);

}


class ViewMapEvent {}

class LoadedViewMapEvent extends ViewMapEvent {}

class NotLoadedViewMapEvent extends ViewMapEvent {
  final int position;
  NotLoadedViewMapEvent(this.position);

}


class CenterUbiEvent {}

class LoadedCenterUbiEvent extends CenterUbiEvent {}

class NotLoadedCenterUbiEvent extends CenterUbiEvent {
  final int position;
  NotLoadedCenterUbiEvent(this.position);

}


class SearchSchoolEvent {}

class LoadedSearchSchoolEvent extends SearchSchoolEvent {}

class NotLoadedSearchSchoolEvent extends SearchSchoolEvent {
  final int position;
  NotLoadedSearchSchoolEvent(this.position);

}

class EnterUbicationEvent {}

class LoadedEnterUbicationEvent extends EnterUbicationEvent {}

class NotLoadedEnterUbicationEvent extends EnterUbicationEvent {
  final int position;
  NotLoadedEnterUbicationEvent(this.position);

}

class ViewInformationSchoolEvent {}

class LoadedViewInformationSchoolEvent extends ViewInformationSchoolEvent {}

class NotLoadedViewInformationSchoolEvent extends ViewInformationSchoolEvent {
  final int position;
  NotLoadedViewInformationSchoolEvent(this.position);

}

