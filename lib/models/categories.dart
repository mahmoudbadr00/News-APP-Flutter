import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/pages/business.dart';
import 'package:newsapp/pages/entertainment.dart';
import 'package:newsapp/pages/health.dart';
import 'package:newsapp/pages/science.dart';
import 'package:newsapp/pages/sports.dart';
import 'package:newsapp/pages/technology.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (categoryModel.name == 'business') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Business()),
          );
        } else if (categoryModel.name == 'entertainment') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Entertainment()),
          );
        } else if (categoryModel.name == 'health') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Health()),
          );
        } else if (categoryModel.name == 'science') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Science()),
          );
        } else if (categoryModel.name == 'sports') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Sports()),
          );
        } else if (categoryModel.name == 'technology') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Technology()),
          );
        }
        /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Business()),
      );*/
      },
      //categoryModel.ontap,
      child: Container(
          alignment: Alignment.center,
          //height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryModel.img), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            categoryModel.name,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black12),
          )),
    );
  }
}
