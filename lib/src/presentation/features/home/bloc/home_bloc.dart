import 'package:bloc/bloc.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';
import 'package:scube_task/src/domain/usecase/home_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase useCase;

  HomeBloc(this.useCase) : super(HomeInitial()) {
    on<FetchHomeData>((event, emit) async {
      emit(HomeLoading());

      final result = await useCase.getHomeData();

      if (result is FailureResult) {
        emit(HomeError(((result as FailureResult).error as Failure).message));
      }
      
      emit(HomeLoaded((result as Success).data as HomeEntity));
    });
  }
}
