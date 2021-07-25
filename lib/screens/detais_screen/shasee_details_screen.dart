import 'package:car_shasee/models/shasee_model.dart';
import 'package:flutter/material.dart';

class ShaseeDetailsScreen extends StatelessWidget {
  const ShaseeDetailsScreen({
    @required this.shaseeModel,
  });

  final ShaseeModel? shaseeModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          // title: Text(rocket.name),
          title: Text('اسم الشاصيه'),
        ),
        body: ListView(
          children: [
            // if (rocket.flickrImages.isNotEmpty) _ImageHeader(rocket: rocket),
            SizedBox(
              height: 350,
              child: Hero(
                tag: 'hero-id-image',
                child: Image.network(
                  'https://png.vector.me/files/images/1/5/152520/free_vector_brand_new_car.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                // rocket.name,
                'اسم الشاصيه',
                style: textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                // rocket.description,
                'ملاحظات علي الشاصيه',
                style: textTheme.subtitle1,
              ),
            ),
            const Divider(),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: SizedBox(
            //     height: 56.0,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         // launch(rocket.wikipedia);
            //       },
            //       child: Center(
            //         child: Text('View Wikipedia Article'),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
