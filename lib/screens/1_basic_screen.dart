import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Center(
        child: Text('Basic Screen'),
      ),
    );
  }
}
