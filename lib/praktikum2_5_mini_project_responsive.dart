import 'package:flutter/material.dart';
import 'identity_footer.dart';

class Praktikum25MiniProject extends StatelessWidget {
  const Praktikum25MiniProject({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 2.5 - Mini Project')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: width < 600 ? _buildList() : _buildGrid(),
            ),
          ),
          const IdentityFooter(identity: "Danu Trianggoro / C2C023079"),
        ],
      ),
    );
  }

  Widget _buildList() {
    return ListView(children: _buildItems());
  }

  Widget _buildGrid() {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: _buildItems(),
    );
  }

  List<Widget> _buildItems() {
    return List.generate(
      10,
      (index) => Card(
        child: Center(child: Text('Item $index', style: const TextStyle(fontSize: 18))),
      ),
    );
  }
}
