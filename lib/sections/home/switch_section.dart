import 'package:flutter/material.dart';

class SwitchItem extends StatelessWidget {

  const SwitchItem(this.switchText, this.isOn, {Key? key}) : super(key: key);
  final String switchText;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          color: Colors.amber,
          child: SwitchListTile(
            title: Text(
              switchText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            value: isOn,
            onChanged: (bool isOn) {},
          ),
        ),
      ),
    );
  }
}
