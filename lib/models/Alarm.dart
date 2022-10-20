import 'package:app1/components/timealarm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StyelAlarm extends StatelessWidget {
  final TimeAlarm timeAlarm;
  const StyelAlarm({required this.timeAlarm});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(timeAlarm.name),
        Row(
          children: [
            Icon(Icons.alarm),
            Text(timeAlarm.time),
          ],
        )
      ],
    );
  }
}
