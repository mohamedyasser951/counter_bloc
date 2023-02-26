
import 'package:flutter/material.dart';

@immutable
abstract class CounterEvents{}

class IncrementEvent extends CounterEvents{}

class DecrementEvent extends CounterEvents{}