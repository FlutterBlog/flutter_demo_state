import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_state_mob/MobX/CountMobX.dart';

class CountMobXPage extends StatefulWidget {
  const CountMobXPage({Key? key}) : super(key: key);

  @override
  _CountMobXPageState createState() => _CountMobXPageState();
}

class _CountMobXPageState extends State<CountMobXPage> {
  //Mark: -
  final Counter counter = Counter();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 4 MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count Num:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Observer(
              builder: (_) =>
                  Text('${counter.value}', style: TextStyle(fontSize: 42.0)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Add',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    counter.increment();
                  },
                ),
                TextButton(
                  child: Text(
                    'Remove',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onPressed: () {
                    counter.decrement();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
