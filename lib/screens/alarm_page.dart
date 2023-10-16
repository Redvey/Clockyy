import 'package:clock_app/data.dart';
import 'package:clock_app/theme_data/theme_data.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alarm",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primaryTextColor),
            ),
            Expanded(
              child: ListView(
                children: alarms.map((alarm) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 32),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: alarm.gradientColors,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.label,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              "Office",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Switch(
                                value: true,
                                activeColor: Colors.white,
                                onChanged: (bool value) {}),
                          ],
                        ),
                        Text(
                          "Mon-Fri",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "07:00 AM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 36,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }).followedBy([
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add the action you want to perform when the FAB is pressed
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                ]).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
