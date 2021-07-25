import 'package:flutter/foundation.dart';

class ShaseeModel {
  const ShaseeModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageUrl,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? imageUrl;
}
