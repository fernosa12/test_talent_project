import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentations/auth/cubit/auth_cubit.dart';
import '../router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final context = router.navigatorKey.currentContext;
    if (context == null) {
      // if the context is null we can't check the authentication status
      // so we abort the navigation
      resolver.next(false);
      return;
    }
    final authenticated = context.read<AuthCubit>().state.isAuthenticated;
    if (authenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed

      resolver.redirect(const LoginRoute());
    }
  }
}
