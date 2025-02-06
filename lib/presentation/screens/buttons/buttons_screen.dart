import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          // Envolver en un scroll
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Mejor alineación
            children: [
              _buildButtonSection('Elevated Buttons', colors, [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: const Text('Disabled'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('With Icon'),
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
              ]),
              _buildButtonSection('Filled Buttons', colors, [
                FilledButton(
                  onPressed: () {},
                  child: const Text('Filled'),
                ),
                FilledButton(
                  onPressed: null,
                  child: const Text('Disabled'),
                ),
                FilledButton.icon(
                  onPressed: () {},
                  label: const Text('With Icon'),
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
              ]),
              _buildButtonSection('Outlined Buttons', colors, [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined'),
                ),
                OutlinedButton(
                  onPressed: null,
                  child: const Text('Disabled'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text('With Icon'),
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
              ]),
              _buildButtonSection('Text Buttons', colors, [
                TextButton(
                  onPressed: () {},
                  child: const Text('Text'),
                ),
                TextButton(
                  onPressed: null,
                  child: const Text('Disabled'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text('With Icon'),
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
              ]),
              _buildButtonSection('Icon Buttons', colors, [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
                IconButton(
                  onPressed: null,
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.primary),
                    iconColor: WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              ]),
              _buildButtonSection('Custom Button', colors, [
                CustomButton(
                  colors: colors,
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonSection(
    String title,
    ColorScheme colors,
    List<Widget> buttons,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: colors.secondary,
            ),
          ),
          Wrap(
            spacing: 5,
            alignment: WrapAlignment.center,
            children: buttons,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final ColorScheme colors;

  const CustomButton({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
          color: colors.tertiary,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  const Icon(
                    Icons.add_ic_call_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  const Text(
                    'Custom',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
