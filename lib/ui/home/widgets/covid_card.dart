import 'package:covid_app/data/models/covid_model.dart';
import 'package:flutter/material.dart';

class CovidCard extends StatelessWidget {
  final List<CovidModel> state;
  CovidCard(this.state);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Text(
              "${state[index].country}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Total confirmed: ${state[index].totalConfirmed}",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "Total death: ${state[index].totalDeaths}",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
