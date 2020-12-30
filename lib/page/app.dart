import 'package:flutter/material.dart';
import 'package:flutter_row_and_column/page/column_test.dart';
import 'package:flutter_row_and_column/page/row_test.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row & Column")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowTest()),
                );
              },
              child: Text("Row 테스트"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColumnTest()),
                );
              },
              child: Text("Column 테스트"),
            )
          ],
        ),
      ),
    );
  }
}
