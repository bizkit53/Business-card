import 'package:business_card/presentation/widgets/languages_tile.dart';
import 'package:business_card/presentation/widgets/work_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'presentation/widgets/homepage_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter Academy')),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Grid(),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: const [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TextTile(content: 'Piotr'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/photo.jpg'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: EducationTile(
              img: 'assets/images/agh-logo.jpg',
              firstCycle: 'Informatyka i ekonometria\n2018-2021, I st.',
              secondCycle: 'Informatyka i ekonometria\n2021-2023, II st.'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/linkedin-logo.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: LanguagesTile(
              firstLangImg: 'assets/images/flag-pl.png',
              secondLangImg: 'assets/images/flag-en.png',
              firstLevel: 'Ojczysty',
              secondLevel: '    B2    '),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: WorkTile(
            img: 'assets/images/abb-logo.png',
            position: 'Release Manager\n06.2020 - obecnie',
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 1,
          child: FittedTextTile(
              content:
                  'Oczekiwania:\n1. Firebase\n2. Clean architecture\n3. Strumienie\n4. Różne podejścia do zarządzania stanem'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-Prince2.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/free-time-logo.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/music-logo.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-SMC.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-Agile.png'),
        ),
      ],
    );
  }
}
