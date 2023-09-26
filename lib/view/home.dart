import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_class.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changeColors = Provider.of<ColorsChange>(context, listen: false);
    print('building');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ColorsChange>(
              builder: (context, value, child) {
                return CircleAvatar(
                  backgroundColor: value.currentColor,
                  radius: 70,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  changeColors.changeColors();
                },
                child: const Text('Click here'))
          ],
        ),
      ),
    );
  }
}
