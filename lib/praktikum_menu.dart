import 'package:flutter/material.dart';

import 'praktikum2_1_mediaquery.dart';
import 'praktikum2_2_responsive_row_column.dart';
import 'praktikum2_3_layoutbuilder.dart';
import 'praktikum2_4_grid_adaptive.dart';
import 'praktikum2_5_mini_project_responsive.dart';

class PraktikumMenu extends StatelessWidget {
  const PraktikumMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum 2 - Responsive UI"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          menuButton(context, "Praktikum 2.1 - MediaQuery", const Praktikum21MediaQuery()),
          menuButton(context, "Praktikum 2.2 - Row & Column", const Praktikum22Responsive()),
          menuButton(context, "Praktikum 2.3 - LayoutBuilder", const Praktikum23LayoutBuilder()),
          menuButton(context, "Praktikum 2.4 - Grid Adaptive", const Praktikum24GridAdaptive()),
          menuButton(context, "Praktikum 2.5 - Mini Project", const Praktikum25MiniProject()),
        ],
      ),
    );
  }

  Widget menuButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          textStyle: const TextStyle(fontSize: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
        child: Text(title),
      ),
    );
  }
}
