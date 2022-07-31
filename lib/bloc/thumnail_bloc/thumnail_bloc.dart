import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:men4you/data/models/thumnail_model.dart';
import 'package:men4you/data/repositories/thumnail_repository.dart';

part 'thumnail_event.dart';
part 'thumnail_state.dart';

class ThumnailBloc extends Bloc<ThumnailEvent, ThumnailState> {
  final ThumnailRepository _thumnailRepository;
  StreamSubscription? _thumnailSubscription;

  ThumnailBloc({required ThumnailRepository thumnailRepository})
      : _thumnailRepository = thumnailRepository,
        super(ThumnailLoading());

  @override
  Stream<ThumnailState> mapEventToState(
    ThumnailEvent event,
  ) async* {
    if (event is LoadThumnail) {
      yield* _mapLoadThumnailToState();
    }
    if (event is LoadedThumnail) {
      yield* _mapLoadedThumnailToState(event);
    }
  }

  Stream<ThumnailState> _mapLoadThumnailToState() async* {
    _thumnailSubscription?.cancel();
    _thumnailRepository
        .getallthumnail()
        .listen((thumnails) => add(LoadedThumnail(thumnails)));
  }

  Stream<ThumnailState> _mapLoadedThumnailToState(LoadedThumnail event) async* {
    yield ThumnailLoaded(thumnails: event.thumnails);
  }
}
