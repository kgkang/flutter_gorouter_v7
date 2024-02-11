import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class TransitionScreen2 extends StatelessWidget {
  const TransitionScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text('POP'),
            ),
          ],
        ),
      ),
    );
  }
}
