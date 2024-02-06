import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text('라우트'),
          title: Text(GoRouterState.of(context).matchedLocation),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: body,
        ));
  }
}
