import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
  // Widget wrappedRoute(BuildContext context) {
  //   return BlocProvider<HomeCubit>(
  //     create: (context) => di(),
  //     child: this,
  //   );
  // }
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Text("text"),
      ],
    ));
  }
}
