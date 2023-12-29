import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 2.0, 'label': 'Elevation 1'},
  {'elevation': 4.0, 'label': 'Elevation 2'},
  {'elevation': 8.0, 'label': 'Elevation 3'},
  {'elevation': 16.0, 'label': 'Elevation 4'},
  {'elevation': 24.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = "cards_screen";

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards
              .map(
                (card) => _CardType1(
                  label: card['label'],
                  elevation: card['elevation'],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({
    required this.label,
    required this.elevation,
  });

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {
                },
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
