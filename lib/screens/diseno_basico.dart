import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        Image(
          image: AssetImage('assets/Anya.webp'),
        ),
        _Title(),
        _Icons(),
      ],
    ));
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Titulo largo porque si la wa fome',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Subtititulo largo la wea fome',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}

class _Icons extends StatelessWidget {
  const _Icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _CustomButtom(
            iconName: Icons.call,
            textLabel: 'Call',
          ),
          _CustomButtom(
            iconName: Icons.route_sharp,
            textLabel: 'Route',
          ),
          _CustomButtom(
            iconName: Icons.share,
            textLabel: 'Shared',
          ),
        ],
      ),
    );
  }
}

class _CustomButtom extends StatelessWidget {
  final IconData iconName;
  final String textLabel;
  const _CustomButtom({
    Key? key,
    required this.iconName,
    required this.textLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconName,
          color: Colors.lightBlue,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textLabel.toUpperCase(),
          style: const TextStyle(
              color: Colors.lightBlue, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
