class GalleryModel{
  String? name;
  int? length;
  String? img;

  GalleryModel();

  GalleryModel.setData({required this.name, required this.length, required this.img});

  void makeList(List<GalleryModel> list){}

  factory GalleryModel.getData(Map map) => GalleryModel.setData(name: map['name'], length: map['length'], img: 'assets/gallery/${map['name']}.png');
}