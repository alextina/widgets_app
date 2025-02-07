import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarsScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarsScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Row(
        spacing: 10,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: Colors.white,
          ),
          Text('This is a SnackBar!'),
        ],
      ),
      backgroundColor: colors.primary,
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
            'Sit sint dolor ea non adipisicing velit ullamco ullamco nostrud nostrud. Voluptate laborum laborum Lorem proident sint aliquip velit ullamco cillum mollit duis. Consequat qui consequat irure ullamco irure laborum adipisicing duis deserunt.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Accept')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Aute exercitation cillum nisi laborum minim proident id velit sunt anim et.')
                  ]);
                },
                child: Text('Used Licenses!')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: Text('Show Dialog!')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
