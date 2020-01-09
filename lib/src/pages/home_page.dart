import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> opts = [];
    data.forEach((opt) {
      final wtemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.access_alarm, color: Colors.blue,),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
        onTap: (){},
      );
      opts..add(wtemp)
          ..add(Divider());

    });
    return opts;
  }
}
