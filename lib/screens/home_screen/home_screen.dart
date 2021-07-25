import 'package:car_shasee/screens/detais_screen/shasee_details_screen.dart';
import 'package:car_shasee/screens/home_screen/shasee_list_tile.dart';
import 'package:car_shasee/shared/widgets.dart';
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
        itemBuilder: (context, index) => ShaseeListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ShaseeDetailsScreen(),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(height: 1.0),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}
