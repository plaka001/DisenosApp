import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: tableRows,
    );
  }

  List<TableRow> get tableRows {
    return const [
      TableRow(
        children: [
          _SingleCard(
            icon: Icons.calendar_month,
            text: 'Calendar',
            color: Colors.red,
          ),
          _SingleCard(
            icon: Icons.share,
            text: 'Shared',
            color: Colors.green,
          ),
        ],
      ),
      TableRow(
        children: [
          _SingleCard(
            icon: Icons.abc_outlined,
            text: 'abc',
            color: Colors.blueAccent,
          ),
          _SingleCard(
            icon: Icons.gps_fixed,
            text: 'Gps',
            color: Colors.purple,
          ),
        ],
      ),
      TableRow(
        children: [
          _SingleCard(
            icon: Icons.image,
            text: 'Image',
            color: Colors.pink,
          ),
          _SingleCard(
            icon: Icons.access_alarm,
            text: 'Alarm',
            color: Colors.yellow,
          ),
        ],
      ),
      TableRow(
        children: [
          _SingleCard(
            icon: Icons.add,
            text: 'Add',
            color: Colors.blueGrey,
          ),
          _SingleCard(
            icon: Icons.calendar_month,
            text: 'Calendar',
            color: Colors.amber,
          ),
        ],
      ),
    ];
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          maxRadius: 35,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
    return _CardBackgraund(child: column);
  }
}

class _CardBackgraund extends StatelessWidget {
  final Widget child;
  const _CardBackgraund({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: const Color.fromRGBO(62, 66, 107, 50),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
