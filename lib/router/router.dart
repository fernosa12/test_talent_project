import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../di/di.dart';
import '../presentations/presentations.dart';

part 'router.gr.dart';

AppRouter router = di();

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: InitialRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
          initial: true,
          children: [
            AutoRoute(
              initial: true,
              page: OnBoardingRoute.page,
              guards: const [],
            ),
            AutoRoute(
              page: LoginRoute.page,
              guards: const [
                // GuestGuard(),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: HomeRoute.page,
          guards: const [],
        ),
        AutoRoute(
          page: CourseRoute.page,
          guards: const [],
        ),
        AutoRoute(
          page: DetailCourseRoute.page,
          guards: const [],
        ),
        AutoRoute(
          page: AudioRoute.page,
          guards: const [],
        ),
        AutoRoute(
          page: AudioDetailRoute.page,
          guards: const [],
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
}
