import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Path Param : ${GoRouterState.of(context).pathParameters}');
    return DefaultLayout(
      body: ListView(
        children: [
          Text('Path Param : ${GoRouterState.of(context).pathParameters}'),
          ElevatedButton(
            onPressed: () {
              context.go('/path_param/456/codefactory');
            },
            child: Text('Go One More'),
          ),
        ],
      ),
    );
  }
}
