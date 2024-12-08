import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../presentations/auth/cubit/auth_cubit.dart';
import '../router.dart';

class GuestGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final context = router.navigatorKey.currentContext;
    if (context == null) {
      // if the context is null we can't check the authentication status
      // so we abort the navigation
      resolver.next(false);
      return;
    }
    final isGuest = !context.read<AuthCubit>().state.isAuthenticated;
    if (!isGuest) {
      final poped = await router.maybePop();
      if (!poped) {
        router.replace(const HomeRoute());
      }
    }
    resolver.next(isGuest);
    // Future.microtask(
    //   () {
    //     router.reevaluateGuards();
    //   },
    // );
    // resolver.resolveNext(!authenticated, reevaluateNext: true);
    if (!isGuest) {
      Fluttertoast.cancel();
      Fluttertoast.showToast(
          msg: 'You are already logged in',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 14.0);
    }
    // router.removeWhere((route) => route.,)
  }
}
