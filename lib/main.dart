import 'package:business_card/logic/education_provider.dart';
import 'package:business_card/logic/expectations_provider.dart';
import 'package:business_card/logic/languages_provider.dart';
import 'package:business_card/logic/name_provider.dart';
import 'package:business_card/logic/photo_provider.dart';
import 'package:business_card/logic/work_provider.dart';
import 'package:business_card/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String name = 'Piotr';
    String aghLogo = 'assets/images/agh-logo.jpg';
    String abbLogo = 'assets/images/abb-logo.png';
    String photoImg = 'assets/images/photo.jpg';
    String firstLangImg = 'assets/images/flag-pl.png';
    String secondLangImg = 'assets/images/flag-en.png';
    String firstLevel = 'Ojczysty';
    String secondLevel = '    B2    ';
    String firstCycleStudies = 'Informatyka i ekonometria\n2018-2021, I st.';
    String secondCycleStudies = 'Informatyka i ekonometria\n2021-2023, II st.';
    String expectations =
        'Oczekiwania:\n1. Firebase\n2. Clean architecture\n3. Strumienie\n4. Różne podejścia do zarządzania stanem';
    String workPosition = 'Release Manager\n06.2020 - obecnie';

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => EducationProvider(
              imgSource: aghLogo,
              firstCycle: firstCycleStudies,
              secondCycle: secondCycleStudies),
        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(
              firstLangImg: firstLangImg,
              firstLevel: firstLevel,
              secondLangImg: secondLangImg,
              secondLevel: secondLevel),
        ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(photoImg: photoImg),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              WorkProvider(imgSource: abbLogo, position: workPosition),
        ),
        ChangeNotifierProvider(
          create: (context) => NameProvider(name: name),
        ),
        ChangeNotifierProvider(
          create: (context) => ExpectationsProvider(expectations: expectations),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
