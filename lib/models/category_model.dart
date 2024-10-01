class CategoryModel {
  final String img;
  final String name;

  CategoryModel({
    required this.img,
    required this.name,
  });
}

List<CategoryModel> categoryM = [
  CategoryModel(
    img: 'assets/images/business.jpg',
    name: 'business',
  ),
  CategoryModel(
    img: 'assets/images/entertainment.jpg',
    name: 'entertainment',
  ),
  CategoryModel(
    img: 'assets/images/health2.jpg',
    name: 'health',
  ),
  CategoryModel(
    img: 'assets/images/science2.png',
    name: 'science',
  ),
  CategoryModel(
    img: 'assets/images/sports2.jpeg',
    name: 'sports',
  ),
  CategoryModel(
    img: 'assets/images/technology.webp',
    name: 'technology',
  ),
];
