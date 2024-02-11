import 'package:flutter_gorouter_v7/screens/1_basic_screen.dart';
import 'package:flutter_gorouter_v7/screens/4_pop_base_screen.dart';
import 'package:flutter_gorouter_v7/screens/5_pop_return_screen.dart';
import 'package:flutter_gorouter_v7/screens/6_path_param_screen.dart';
import 'package:flutter_gorouter_v7/screens/7_query_parameter.dart';
import 'package:flutter_gorouter_v7/screens/8_nested_child_screen.dart';
import 'package:flutter_gorouter_v7/screens/8_nested_screen.dart';
import 'package:flutter_gorouter_v7/screens/root_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/2_named_screen.dart';
import '../screens/3_push_screen.dart';


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
            }),
        GoRoute(
            path: 'named',
            name: 'named_screen',
            builder: (context, state) {
              return NamedScreen();
            }),
        GoRoute(
            path: 'push',
            builder: (context, state) {
              return PushScreen();
            }),
        GoRoute(
            path: 'pop',
            builder: (context, state) {
              return PopBaseScreen();
            },
            routes: [
              // /pop/return
              GoRoute(
                  path: 'return',
                  builder: (context, state) {
                    return PopReturnScreen();
                  })
            ]),
        GoRoute(
          // /path_param/123이라고 호출하면,
          // id변수에 123이 전달됨
          path: 'path_param/:id',
          builder: (context, state) {
            return PathParamScreen();
          },
          routes: [
            // /path_param/:id/:name
            GoRoute(
              path: ':name',
              builder: (context, state) {
                return PathParamScreen();
              },
            )
          ],
        ),
        GoRoute(
          path: 'query_param',
          builder: (context, state) {
            return QueryParamScreen();
          },
        ),
        ShellRoute(
          // Shell Route는 path 속성이 없음.
          // Shell Route의 builder는
          //   - 하위 routes를 감싸는 빌더
          //   - 3번째 인자로 child를 받음. 하위 route의 빌더가 리턴하는 위젯을 받음
          builder: (context, state, child) {
            return NestedScreen(child: child);
          },
          routes: [
            GoRoute(
              path: 'nested/a',
              builder: (_, state) {
                return NestedChildScreen(routeName: '/nested/a');
              },
            ),
            GoRoute(
              path: 'nested/b',
              builder: (_, state) {
                return NestedChildScreen(routeName: '/nested/b');
              },
            ),
            GoRoute(
              path: 'nested/c',
              builder: (_, state) {
                return NestedChildScreen(routeName: '/nested/c');
              },
            ),
          ],
        )
      ],
    ),
  ],
);
