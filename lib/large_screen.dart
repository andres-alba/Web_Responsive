import 'package:flutter/material.dart';
import 'constants.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Image.asset(
              "assets/images/mis-puntos.png",
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Saldo anterior',
                        style: kSmallBlackText,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '10.000',
                        style: kBigGreyNumber,
                      ),
                      Text('Puntos'),
                    ],
                  ),
                  const Text(
                    '|',
                    style: kSmallText,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Tienes',
                        style: kSmallBlackText,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '13.000',
                        style: kBigGreenNumber,
                      ),
                      Text('Puntos'),
                    ],
                  ),
                  const Text(
                    '|',
                    style: kSmallText,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Puntos a vencer',
                        style: kSmallBlackText,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '2.200',
                        style: kBigRedNumber,
                      ),
                      Text('31 Mar 2021', style: kSmallRedNumber),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              width: 600,
              height: 80.0,
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('500', style: kSmallGreyNumber),
                        Text('Puntos vencidos'),
                      ],
                    ),
                    const VerticalDivider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('5.500', style: kSmallGreyNumber),
                        Text('Puntos redimidos'),
                      ],
                    ),
                    const VerticalDivider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('15.000', style: kSmallGreyNumber),
                        Text('Puntos Ganados'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text('Movimiento detallado de mis puntos', style: kBlueText),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 300,
              width: 800,
              child: Card(
                child: ListView(
                  children:
                      ListTile.divideTiles(context: context, tiles: const [
                    ListTile(
                      dense: true,
                      title: Text('21 Ene 2021'),
                      subtitle: Text('Puntos ganados por compra'),
                      trailing: Text(
                        '7.500',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      title: Text('15 Ene 2021'),
                      subtitle: Text('Puntos ganados por compra'),
                      trailing: Text(
                        '7.500',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      title: Text('10 Ene 2021'),
                      subtitle: Text('Puntos ganados por compra'),
                      trailing: Text(
                        '-5.500',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      title: Text('07 Ene 2021'),
                      subtitle: Text('Puntos vencidos'),
                      trailing: Text(
                        '-500',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      trailing: ElevatedButton(
                        onPressed: null,
                        child: Text('Cargar mas movimientos'),
                      ),
                    ),
                  ]).toList(),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              child: Image.asset(
                "assets/images/footer.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
