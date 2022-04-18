import 'package:flutter/material.dart';

class TypesList extends StatelessWidget {
  final List<Widget> cards;
  const TypesList({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            ...cards,
          ],
        ),
      ),
    );
  }
}
