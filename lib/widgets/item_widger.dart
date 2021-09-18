import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catelog/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({Key? key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item!.name}");
        },
        leading: Image.network(item!.imageUrl!),
        title: Text(item!.name!),
        subtitle: Text(item!.description!),
        trailing: Text(
          "\$${item!.price.toString()}",
          style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
