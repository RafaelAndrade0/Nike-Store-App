import 'dart:convert';

class Shoe {
  final String id;
  final String title;
  final String thumbImage;
  final double price;
  Shoe({
    this.id,
    this.title,
    this.thumbImage,
    this.price,
  });

  Shoe copyWith({
    String id,
    String title,
    String thumbImage,
    double price,
  }) {
    return Shoe(
      id: id ?? this.id,
      title: title ?? this.title,
      thumbImage: thumbImage ?? this.thumbImage,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'thumbImage': thumbImage,
      'price': price,
    };
  }

  factory Shoe.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Shoe(
      id: map['id'],
      title: map['title'],
      thumbImage: map['thumbImage'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Shoe.fromJson(String source) => Shoe.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shoe(id: $id, title: $title, thumbImage: $thumbImage, price: $price)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Shoe &&
        o.id == id &&
        o.title == title &&
        o.thumbImage == thumbImage &&
        o.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ thumbImage.hashCode ^ price.hashCode;
  }
}

List<Shoe> shoesList = [
  Shoe(
    id: '1',
    title: 'LeBron 17',
    price: 225,
    thumbImage: 'assets/images/lebron17.png',
  ),
  Shoe(
    id: '2',
    title: 'Univ. Red',
    price: 450,
    thumbImage: 'assets/images/un-red.png',
  ),
  Shoe(
    id: '3',
    title: 'Zoom KD 13',
    price: 180,
    thumbImage: 'assets/images/zoomkd13.png',
  ),
  Shoe(
    id: '4',
    title: "Low 'Titan'",
    price: 325,
    thumbImage: 'assets/images/lebron17_red.png',
  ),
  Shoe(
    id: '5',
    title: "PG 4 EP 'PCG'",
    price: 225,
    thumbImage: 'assets/images/pcg.png',
  ),
  Shoe(
    id: '6',
    title: "KD 13 'Chill'",
    price: 399,
    thumbImage: 'assets/images/chill.png',
  ),
];
