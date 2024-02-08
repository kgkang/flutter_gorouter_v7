import 'package:flutter_gorouter_v7/screens/1_basic_screen.dart';
import 'package:flutter_gorouter_v7/screens/root_screen.dart';
import 'package:go_router/go_router.dart';

// Path 개념처럼 route를 선언한다.
// 예를 들어 base url이 https://blog.codefactory.ai 라면
// - / => https://blog.codefactory.ai/
// - /flutter => https://blog.codefactory.ai/flutter
// / => home
// /basic => basic screen
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return RootScreen();
      },
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return BasicScreen();
          }
        )
      ],
    ),
  ],
);
