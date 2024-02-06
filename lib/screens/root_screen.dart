import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [],
      ),
    );
  }
}
