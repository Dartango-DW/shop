import 'package:flutter/material.dart';

class Strings {
  final value;

  const Strings.create(
    this.value,
  );

  static void init(BuildContext context) {}

  String getValue() {
    return value;
  }

  static const globalName = Strings.create(
    'name',
  );

  static const globalHeight = Strings.create(
    'heigt',
  );

  static const globalWeight = Strings.create(
    'weigt',
  );
}
