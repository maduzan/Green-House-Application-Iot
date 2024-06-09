import 'package:flutter/material.dart';

class Woter extends StatefulWidget {
  const Woter({super.key});

  @override
  State<Woter> createState() => _WoterState();
}

class _WoterState extends State<Woter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back.jpg'),
          fit: BoxFit.cover,
          opacity: 0.5, // Adjusted the opacity to a range between 0 and 1
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Iot App'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/Home');
            },
            icon: const Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Define any action for settings button here
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Histogram(),
        ),
      ),
    );
  }
}

class Histogram extends StatelessWidget {
  final List<int> data = [8, 10, 14, 15, 13, 10, 16];

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, 200), // Define the size of the histogram
      painter: HistogramPainter(data),
    );
  }
}

class HistogramPainter extends CustomPainter {
  final List<int> data;
  HistogramPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.lightBlueAccent
      ..style = PaintingStyle.fill;

    final maxData = data.reduce((a, b) => a > b ? a : b);
    final barWidth = size.width / data.length;

    for (int i = 0; i < data.length; i++) {
      final barHeight = (data[i] / maxData) * size.height;
      final barRect = Rect.fromLTWH(
        i * barWidth,
        size.height - barHeight,
        barWidth - 4, // Adds spacing between bars
        barHeight,
      );
      canvas.drawRect(barRect, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
