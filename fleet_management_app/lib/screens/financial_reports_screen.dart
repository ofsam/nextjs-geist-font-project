import 'package:flutter/material.dart';

class FinancialReportsScreen extends StatelessWidget {
  const FinancialReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Reports'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Text(
          'Financial reports and fleet expenses will be displayed here.',
          style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
