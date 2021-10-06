import 'package:flutter/material.dart';

class NoMeeting extends StatelessWidget {
  const NoMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "No Such Meeting",
        ),
      ),
    );
  }
}
