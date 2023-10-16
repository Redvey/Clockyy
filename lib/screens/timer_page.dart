import 'package:clock_app/data.dart';
import 'package:flutter/material.dart';


class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 64),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Alarm"),
            Expanded(
              child: ListView(
                children: alarms.map((alarm){
                  return Container(
                    color: Colors.yellow,
                    height: 100,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
