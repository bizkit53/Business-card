import 'package:flutter/material.dart';

class FreeTimeScreen extends StatelessWidget {
  const FreeTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double boxHeight = 70;
    double boxWidth = 70;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Czas wolny'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          itemExtent: 65,
          children: [
            const ListTile(
              title: Text('Wolny czas przeznaczam na:'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/free-time/rower.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Rower'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/free-time/lyzwy.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Łyżwy'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/free-time/plywanie.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Pływanie'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/free-time/pad.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Gry komputerowe'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/free-time/web.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Przeglądanie internetu'),
            ),
          ],
        ),
      ),
    );
  }
}
