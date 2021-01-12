import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/cubit/nav_cubit.dart';

import 'cubit/nav_state.dart';
import 'pages/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<MaterialPage> _pages = [
    MaterialPage( key: ValueKey('Page1'), child: Page1() ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: BlocProvider(
        create: (BuildContext context) => NavCubit(),

        // WHY PAGES NOT UPDATES HERE FROM BLoC?????
        child: BlocListener<NavCubit, NavState>(
          listener: (context, state) {
            _pages = state.pages;
          },
          child: Navigator(
            pages: _pages,
            onPopPage: (route, result) {
              if ( !route.didPop(result) ) {
                return false;
              }
              return true;
            },
          )
        )

      ),

    );
  }
}
