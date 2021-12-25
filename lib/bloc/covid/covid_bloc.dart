import 'package:bloc/bloc.dart';
import 'package:covid_app/data/models/covid_model.dart';
import 'package:covid_app/data/repositories/covid_repository.dart';
import 'package:equatable/equatable.dart';

part 'covid_event.dart';
part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  final repository = CovidRepository();
  CovidBloc() : super(CovidInitial()) {
    on<GetCovidList>((event, emit) async {
      final covidList = await repository.fetchCovidList();
      emit(CovidLoaded(covidList));
    });
  }
}
