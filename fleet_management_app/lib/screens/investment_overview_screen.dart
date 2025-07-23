import 'package:flutter/material.dart';

class InvestmentOverviewScreen extends StatelessWidget {
  const InvestmentOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Overview'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text(
          'Investment performance metrics and overview will be displayed here.',
          style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
