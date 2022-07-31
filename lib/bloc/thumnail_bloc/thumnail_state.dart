part of 'thumnail_bloc.dart';

abstract class ThumnailState extends Equatable {
  const ThumnailState();

  @override
  List<Object> get props => [];
}

class ThumnailLoading extends ThumnailState {}

class ThumnailLoaded extends ThumnailState {
  final List<ThumnailModel> thumnails;

  const ThumnailLoaded({this.thumnails = const <ThumnailModel>[]});
  
  @override
  List<Object> get props => [thumnails];
}
