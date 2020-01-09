import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key key}) : super(key: key);

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component text'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Lorem Impsum'),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
