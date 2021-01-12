
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/pages/page1.dart';
import 'package:flutter_test_app/pages/page2.dart';

import 'nav_state.dart';

class NavCubit extends Cubit<NavState> {

  NavCubit() : super( NavState(
      [
        MaterialPage( key: ValueKey('Page1'), child: Page1() ),
      ]
  ) );

  void navigateTo() {
    final navState = NavState([MaterialPage( key: ValueKey('Page2'), child: Page2() )]);
    debugPrint(navState.toString());

    emit(navState);
  }

}