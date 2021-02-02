import 'package:better_budget/constants.dart';
import 'package:flutter/material.dart';
import 'package:better_budget/cards.dart';
import 'package:better_budget/envelope.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;
  static const String navigationID = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
            TabBar(
              tabs: <Widget>[
                Tab(text: 'Overview'),
                Tab(text: 'Accounts'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      height: 40,
                    ),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Envelope(
                        amount: 20.0,
                        name: 'groceries',
                      );
                    },
                  ),
                  Icon(
                    Icons.hot_tub,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryThemeColor,
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
