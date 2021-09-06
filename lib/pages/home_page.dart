import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Param passando named');
              },
              child: Text(
                'Ir para detalhe',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: '/detalhe',
                      // arguments: 'Paramentro passando pelo push',
                    ),
                    builder: (_) => DetalhePage(
                      parametro: 'Paramentro passando pelo push',
                    ),
                  ),
                );
              },
              child: Text(
                'Ir para detalhe',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
