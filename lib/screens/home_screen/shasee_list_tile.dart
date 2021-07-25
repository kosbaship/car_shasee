import 'package:car_shasee/models/shasee_model.dart';
import 'package:flutter/material.dart';

class ShaseeListTile extends StatelessWidget {
  const ShaseeListTile({
    @required this.shaseeModel,
    @required this.onTap,
  });

  final ShaseeModel? shaseeModel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      onTap: onTap,
      leading:
          // rocket.flickrImages.isEmpty
          //     ? null
          //     :
          Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8.0),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Hero(
            // tag: 'hero-${rocket.id}-image',
            tag: 'hero-id-image',
            child: Image.network(
              // rocket.flickrImages.first,
              'https://png.vector.me/files/images/1/5/152520/free_vector_brand_new_car.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Text('رقم الشاصي'),
      subtitle: Text(
        // rocket.description,
        'ملاحظات\n',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.chevron_right_sharp),
    );
  }
}
