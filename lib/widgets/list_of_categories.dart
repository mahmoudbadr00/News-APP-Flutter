import 'package:flutter/material.dart';
import 'package:newsapp/models/categories.dart';
import 'package:newsapp/models/category_model.dart';

class ListOfCategories extends StatelessWidget {
  const ListOfCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryM.length,
          itemBuilder: (context, i) {
            return Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Categories(
                  categoryModel: categoryM[i],
                ));
          }),
    );
  }
}
