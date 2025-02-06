import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress Indicators'),
        ),
        body: _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 30,
        children: const [
          SizedBox(height: 30),
          Text('Circular Progress Indicator'),
          CircularProgressIndicator(
              strokeWidth: 2, backgroundColor: Colors.black45),
          Text('Controlled Progess Indicators'),
          _ControledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControledProgressIndicator extends StatelessWidget {
  const _ControledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          
          final progressValue = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              spacing: 30,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.black12,
                )
              ],
            ),
          );
        });
  }
}
