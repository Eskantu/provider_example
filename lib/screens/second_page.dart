import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/provider.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda page'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(myProvider.miTexto),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver'),
            )
          ],
        ),
      )),
    );
  }
}
