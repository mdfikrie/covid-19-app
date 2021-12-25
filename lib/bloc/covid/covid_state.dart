part of 'covid_bloc.dart';

abstract class CovidState extends Equatable {
  const CovidState();
}

class CovidInitial extends CovidState {
  @override
  List<Object?> get props => [];
}

class CovidLoaded extends CovidState {
  late final List<CovidModel> covid;
  CovidLoaded(this.covid);
  @override
  List<Object?> get props => [covid];
}

class CovidLoading extends CovidState {
  @override
  List<Object?> get props => [];
}

class CovidError extends CovidState {
  late final String message;
  CovidError(this.message);
  @override
  List<Object?> get props => [message];
}
