import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class QueryParamScreen extends StatelessWidget {
  const QueryParamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          Text('Query Parameter : ${GoRouterState.of(context).uri.queryParameters}'),
          // query_parameter?name=codefactory&age=32
          ElevatedButton(
            onPressed: () {
              context.push(
                Uri(
                  path: '/query_param',
                  queryParameters: {
                    'name' : 'codefactory',
                    'age' : '32',
                  }
                ).toString(),
              );
            },
            child: Text('Query Parameter'),
          ),
        ],
      ),
    );
  }
}
