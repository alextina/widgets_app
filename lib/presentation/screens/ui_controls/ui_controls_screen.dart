import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_control_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, boat, plane }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool breakfast = false;
  bool lunch = false;
  bool dinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Aditional controls'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Selected transportation'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('This is a subtitle'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('This is a subtitle'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('This is a subtitle'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            )
          ],
        ),
        ExpansionTile(
          title: const Text('What do you want?'),
          subtitle: Text('This is a subtitle'),
          initiallyExpanded: true,
          children: [
            CheckboxListTile(
              title: const Text('Breakfast'),
              value: breakfast,
              onChanged: (value) => setState(() {
                breakfast = !breakfast;
              }),
            ),
            CheckboxListTile(
              title: const Text('Lunch'),
              value: lunch,
              onChanged: (value) => setState(() {
                lunch = !lunch;
              }),
            ),
            CheckboxListTile(
              title: const Text('Dinner'),
              value: dinner,
              onChanged: (value) => setState(() {
                dinner = !dinner;
              }),
            )
          ],
        )
      ],
    );
  }
}
