import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/PageWidget.dart';

class LoansPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Loans',
        posters: [{
          'image':'Assets/Images/Posters/Loans/education.jpg',
          'title': 'Education Loan',
          'subtitle': ''
        }
        ],
      ),
    );
}
}

class InvestmentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Investments',
        posters: [],
      ),
    );
  }
}

class MutualFundsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Mutual Funds',
        posters: [],
      ),
    );
  }
}

class PolicyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Policies',
        posters: [],
      ),
    );
  }
}

class FDPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Fixed Deposits',
        posters: [],
      ),
    );
  }
}

class InsurancePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatPageWidget(
        title: 'Insurance',
        posters: [],
      ),
    );
  }
}