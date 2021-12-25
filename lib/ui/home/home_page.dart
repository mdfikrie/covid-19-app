import 'package:covid_app/bloc/covid/covid_bloc.dart';
import 'package:covid_app/ui/home/widgets/covid_card.dart';
import 'package:covid_app/ui/home/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<CovidBloc>().add(GetCovidList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid-19 Apps"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: BlocBuilder<CovidBloc, CovidState>(
          builder: (context, state) {
            if (state is CovidInitial) {
              return Loading();
            } else if (state is CovidLoading) {
              return Loading();
            } else if (state is CovidLoaded) {
              return CovidCard(state.covid);
            } else {
              return Center(
                child: Text("Terjadi kesalahan"),
              );
            }
          },
        ),
      ),
    );
  }
}
