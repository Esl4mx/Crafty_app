class ProfileItemsModel {
  final String title;
  final String image;
  final void Function()? onTap;

  ProfileItemsModel(
      {required this.title, required this.image, required this.onTap});
}
