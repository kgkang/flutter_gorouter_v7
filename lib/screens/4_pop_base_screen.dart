import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class PopBaseScreen extends StatelessWidget {
  const PopBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            // onPressed: () {
            //   context.push('/pop/return');
            // },
            onPressed: () async {
              var result = await context.push('/pop/return');
              print(result);
            },
            child: Text('Push Pop Return Screen'),
          ),
        ],
      ),
    );
  }
}
