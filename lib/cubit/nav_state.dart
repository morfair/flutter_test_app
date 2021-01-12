
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NavState extends Equatable {
  final List<MaterialPage> pages;

  const NavState(this.pages);

  @override
  List<Object> get props => [pages, ];

  String toString() {
    return "${pages.toString()}";
  }

}