

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_app/cubit/nav_cubit.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavCubit(),
      child: Scaffold(
        appBar: AppBar( title: Text('Page 1') ),

        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("page 11111111111"),
                RaisedButton(
                  child: Text('Go to: Page 2', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    print("goto page2 btn");
                    context.read<NavCubit>().navigateTo();
                  },
                ),
              ],
            )
        ),

      ),
    );

  }
}
