import 'package:equatable/equatable.dart';
import 'package:scube_task/src/domain/entites/home_entity.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final HomeEntity home;

  HomeLoaded(this.home);

  @override
  List<Object?> get props => [home];
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}
