import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gorouter_v7/layout/default_layout.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          // context.push() :
          // 현재 route stack 위에 route를 올린다.
          ElevatedButton(
            onPressed: () {
              context.push('/basic');
            },
            child: Text('Push Basic'),
          ),
          // context.go() :
          // 현재 route stack을 삭제하고,
          // route path 순서로 route를 새로 올린다.
          ElevatedButton(
            onPressed: () {
              context.go('/basic');
            },
            child: Text('Go Basic'),
          ),
        ],
      ),
    );
  }
}
