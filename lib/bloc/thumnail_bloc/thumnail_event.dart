part of 'thumnail_bloc.dart';

abstract class ThumnailEvent extends Equatable {
  const ThumnailEvent();

  @override
  List<Object> get props => [];
}

class LoadThumnail extends ThumnailEvent {}

class LoadedThumnail extends ThumnailEvent {
  final List<ThumnailModel> thumnails;

  const LoadedThumnail(this.thumnails);

  @override
  List<Object> get props => [thumnails];
}
