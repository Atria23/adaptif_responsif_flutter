import 'package:flutter/material.dart';
import 'identity_footer.dart';

class Praktikum23LayoutBuilder extends StatelessWidget {
  const Praktikum23LayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 2.3 - LayoutBuilder')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 500) {
                    return Column(children: _buildItems());
                  } else {
                    return Row(children: _buildItems());
                  }
                },
              ),
            ),
          ),
          const IdentityFooter(identity: "Danu Trianggoro / C2C023079"),
        ],
      ),
    );
  }

  List<Widget> _buildItems() {
    return [
      Expanded(child: Container(color: Colors.blue, height: 100)),
      const SizedBox(width: 16, height: 16),
      Expanded(child: Container(color: Colors.orange, height: 100)),
    ];
  }
}
