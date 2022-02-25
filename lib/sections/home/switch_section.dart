import 'package:flutter/material.dart';
import '../widget_model.dart';

class SwitchItem implements WidgetItem {
  final String switchText;
  final bool isOn;

  SwitchItem(this.switchText, this.isOn);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
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
