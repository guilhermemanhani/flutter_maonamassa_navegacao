import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametro;
  const DetalhePage({Key? key, required this.parametro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var param = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(parametro),
            TextButton(onPressed: () {}, child: Text('Voltar'))
          ],
        ),
      ),
    );
  }
}
