import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(Icons.grid_view_rounded, 'General', Colors.blue),
          _SingleCard(
              Icons.directions_bus_filled_rounded, 'Transport', Colors.purple),
        ]),
        TableRow(children: [
          _SingleCard(Icons.shopping_bag_rounded, 'Shopping', Colors.pink),
          _SingleCard(Icons.receipt_rounded, 'Bills', Colors.orange),
        ]),
        TableRow(children: [
          _SingleCard(Icons.movie_creation_rounded, 'Entertainment',
              Colors.indigoAccent),
          _SingleCard(Icons.fastfood_rounded, 'Grocery', Colors.lightGreen),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const _SingleCard(this.icon, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(color: color, fontSize: 18),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
