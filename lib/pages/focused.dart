import 'package:flutter/material.dart';

class Focused extends StatelessWidget {
  const Focused({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Focused'),
      ),
    );
  }
}
