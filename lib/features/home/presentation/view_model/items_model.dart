class ItemsModel {
  final String title, subtitle, image;
  final double price;
  final String discription;
  final String srcModel;

  ItemsModel(
      {required this.srcModel,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.price,
      required this.discription});
}
