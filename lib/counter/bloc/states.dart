import 'package:flutter/material.dart';

@immutable
abstract class CounterStates {}

class CounterIntialState extends CounterStates {}

class CounterSuccessState extends CounterStates {
  final int c;
  CounterSuccessState({required this.c});
}
