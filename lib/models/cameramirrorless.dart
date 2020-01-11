import '../utils/utils.dart';
import 'package:flutter_watch_shop/global_widgets/mirrorless_card.dart';
import 'package:flutter_watch_shop/models/cameramirrorless.dart';

class Mirrorless {
  int id;
  String name;
  List<String> photos;
  List<String> colors;
  int price;
  String brand = "Utuberent";
  
  Mirrorless({
    this.id,
    this.name,
    this.price,
    this.photos,
    this.colors,
  });
}

List<Mirrorless> mirrorlesss = [
  Mirrorless(
    id: 1,
    name: "Sony Alpha A9",
    price: 179,
    photos: [AppImages.watch50, AppImages.watch51],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Mirrorless(
    id: 2,
    name: "Panasonic Lumix GH5",
    price: 159,
    photos: [AppImages.watch60, AppImages.watch61],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
];
