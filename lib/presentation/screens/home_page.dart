import 'package:business_card/presentation/widgets/homepage_widgets.dart';
import 'package:flutter/material.dart';

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
