import 'package:car_shasee/screens/shasee_list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شاصي السيارة'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) => ShaseeListTile(),
        separatorBuilder: (context, index) => const Divider(height: 1.0),
      ),
    );
  }
}
