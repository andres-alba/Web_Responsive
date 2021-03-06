import 'package:flutter/material.dart';
import 'constants.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Image.asset(
                "assets/images/header-mobil.png",
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Informe de saldo para el periodo 2021-01',
                style: kInformeColor,
              ),
              const SizedBox(height: 20.0),
              Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                elevation: 8,
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Saldo anterior',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 20),
                            Text('3.000', style: kBigGreyNumber),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('Puntos disponibles',
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 20),
                            Text(
                              '3.346',
                              style: kBigBlueNumber,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '313',
                              style: kSmallGreyNumber,
                            ),
                            Text(
                              'Puntos vencidos',
                              style: kSmallText,
                            ),
                          ],
                        ),
                        const Text(
                          '|',
                          style: kSmallText,
                        ),
                        Column(
                          children: const [
                            Text(
                              '5.500',
                              style: kSmallGreyNumber,
                            ),
                            Text(
                              'Puntos redimidos',
                              style: kSmallText,
                            ),
                          ],
                        ),
                        const Text(
                          '|',
                          style: kSmallText,
                        ),
                        Column(
                          children: const [
                            Text(
                              '15.000',
                              style: kSmallGreyNumber,
                            ),
                            Text(
                              'Puntos Ganados',
                              style: kSmallText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '2.500',
                              style: kBigRedNumber,
                            ),
                            Text(
                              'Puntos a vencer',
                              style: kSmallRedNumber,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '31 Mar 2021',
                              style: kBigRedNumber,
                            ),
                            Text(
                              'Fecha de vencimiento',
                              style: kSmallRedNumber,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Divider(),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(unselectedWidgetColor: Colors.black),
                      child: const ExpansionTile(
                        title: Text(
                          'Ver movimiento detallado de mis puntos',
                          style: kSmallText,
                        ),
                        children: [
                          ListTile(
                            dense: true,
                            title: Text('21 Ene 2021'),
                            subtitle: Text('Puntos ganados por compra'),
                            trailing: Text(
                              '7.500',
                              style: TextStyle(
                                  color: Color(0xff21BA45),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            dense: true,
                            title: Text('15 Ene 2021'),
                            subtitle: Text('Puntos ganados por compra'),
                            trailing: Text(
                              '7.500',
                              style: TextStyle(
                                  color: Color(0xff21BA45),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            dense: true,
                            title: Text('10 Ene 2021'),
                            subtitle: Text('Puntos ganados por compra'),
                            trailing: Text(
                              '-5.500',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            dense: true,
                            title: Text('07 Ene 2021'),
                            subtitle: Text('Puntos vencidos'),
                            trailing: Text(
                              '-500',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                child: Image.asset(
                  "assets/images/footer-mobil.png",
                ),
              ),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
