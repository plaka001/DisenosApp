import 'package:flutter/material.dart';

import '../widgets/backgraund.dart';
import '../widgets/card_table.dart';
import '../widgets/navigation.dart';
import '../widgets/page_tittle.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Backgraund(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const Navigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //titulos
          PageTittle(),
          CardTable()
        ],
      ),
    );
  }
}
