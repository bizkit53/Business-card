import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double boxHeight = 70;
    double boxWidth = 70;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Preferencje muzyczne'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          itemExtent: 65,
          children: [
            ListTile(
              leading: SizedBox(
                width: boxWidth,
                height: boxHeight,
                child: Image.asset('assets/images/music/hard-rock.jpg'),
              ),
              title: const Text(
                'Hard rock / metal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Gatunek wiodący'),
            ),
            const ListTile(
              title: Text('Wybrane zespoły z kręgu moich zainteresowań:'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/soad.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('System of a down'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/limp-bizkit.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Limp Bizkit'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/papa-roach.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Papa Roach'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/bullet.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Bullet for my valentine'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/five-finger.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Five finger death punch'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/avenged-sevenfold.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Avenged Sevenfold'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/skillet.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Skillet'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/three-days-grace.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('Three days grace'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/offspring.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('The Offspring'),
            ),
            ListTile(
              leading: SizedBox(
                child: Image.asset('assets/images/music/ira.jpg'),
                width: boxWidth,
                height: boxHeight,
              ),
              title: const Text('IRA'),
            ),
          ],
        ),
      ),
    );
  }
}
