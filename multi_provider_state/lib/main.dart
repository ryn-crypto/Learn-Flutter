import 'package:flutter/material.dart';
import 'package:multi_provider_state/chart.dart';
import 'package:multi_provider_state/money.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(
            create: (context) => Money(),
          ),
          ChangeNotifierProvider<Cart>(
            create: (context) => Cart(),
          )
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                backgroundColor: Colors.purple,
                child: const Icon(Icons.add_shopping_cart),
              ),floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                backgroundColor: Colors.purple,
                child: const Icon(Icons.add_shopping_cart),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text('Multi Provider'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Balance'),
                    Container(
                        height: 30,
                        width: 150,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple[100],
                            border: Border.all(color: Colors.purple, width: 2)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<Money>(
                            builder: (context, money, _) => Text(
                              money.balance.toString(),
                              style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ))
                  ],
                ),
                Container(
                    height: 30,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Cart>(
                        builder: (context, cart, _) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Apple (500) x' + cart.quantity.toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              (500 * cart.quantity).toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
