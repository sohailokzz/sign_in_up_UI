import 'package:flutter/material.dart';

enum SingingCharacter {
  lafayette,
}

class RememberMeOption extends StatefulWidget {
  const RememberMeOption({Key? key}) : super(key: key);

  @override
  State<RememberMeOption> createState() => _RememberMeOptionState();
}

class _RememberMeOptionState extends State<RememberMeOption> {
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Remember Me'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
