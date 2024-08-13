class ImageModel {
  String? image;

  ImageModel({this.image});

  ImageModel.fromJson(Map<String, dynamic> json) {
    image = json["imageUrl"];
  }
}
