import 'package:business_card/logic/education_provider.dart';
import 'package:business_card/logic/expectations_provider.dart';
import 'package:business_card/logic/languages_provider.dart';
import 'package:business_card/logic/name_provider.dart';
import 'package:business_card/logic/photo_provider.dart';
import 'package:business_card/logic/work_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import 'homepage_widgets.dart';

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
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: TextTile(content: Provider.of<NameProvider>(context).name),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: PhotoTile(img: Provider.of<PhotoProvider>(context).photoImg),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: EducationTile(
            img: Provider.of<EducationProvider>(context).imgSource,
            firstCycle: Provider.of<EducationProvider>(context).firstCycle,
            secondCycle: Provider.of<EducationProvider>(context).secondCycle,
          ),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/linkedin-logo.png'),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: LanguagesTile(
              firstLangImg: Provider.of<LanguageProvider>(context).firstLangImg,
              secondLangImg:
                  Provider.of<LanguageProvider>(context).secondLangImg,
              firstLevel: Provider.of<LanguageProvider>(context).firstLevel,
              secondLevel: Provider.of<LanguageProvider>(context).secondLevel),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: WorkTile(
            img: Provider.of<WorkProvider>(context).imgSource,
            position: Provider.of<WorkProvider>(context).position,
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 1,
          child: FittedTextTile(
              content: Provider.of<ExpectationsProvider>(context).expectations),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-Prince2.png'),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/free-time-logo.png'),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/music-logo.png'),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-SMC.png'),
        ),
        const StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ImageTile(img: 'assets/images/badge-Agile.png'),
        ),
      ],
    );
  }
}