import '../utils/utils.dart';

class Product {
  int id;
  String name;
  List<String> photos;
  List<String> colors;
  int price;
  String brand = "Utuberent";

  Product({
    this.id,
    this.name,
    this.price,
    this.photos,
    this.colors,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: "Canon EOS 5D Mark IV",
    price: 179,
    photos: [AppImages.watch10, AppImages.watch11],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 2,
    name: "Nikon D3300",
    price: 159,
    photos: [AppImages.watch20, AppImages.watch21],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 3,
    name: "Nikon D3400",
    price: 159,
    photos: [AppImages.watch30, AppImages.watch31],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
  Product(
    id: 4,
    name: "Canon EOS 750D",
    price: 177,
    photos: [AppImages.watch40, AppImages.watch41],
    colors: ["#E5AE87", "#C1C1C1"],
  ),
];
