import 'dart:math';

Random random = Random();

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
    required this.name,
    required this.price,
    required this.id,
    required this.category,
    required this.description,
    required this.review,
    required this.image,
    required this.rate,
    required this.location,
  });
}

List<TravelDestination> myDestination = [
  TravelDestination(
    id: 2,
    name: "Mt.Agung",
    category: 'popular',
    image: [
      "images/mtagung1.jpg",
      "images/mtagung2.jpg",
      "images/mtagung3.jpg",
      "images/mtagung4.jpg",
    ],
    location: "Bali, Indonesia",
    review: random.nextInt(300) + 25,
    price: 999,
    description: description,
    rate: 4.9,
  ),
  TravelDestination(
    id: 7,
    price: 100,
    name: "Besakih Temple",
    image: [
      "images/besakihtemple1.jpg",
      "images/besakihtemple2.jpg",
      "images/besakihtemple3.jpg",
      "images/besakihtemple4.jpg",
    ],
    review: random.nextInt(300) + 25,
    category: "popular",
    location: "Bali, Indonesia",
    description: description,
    rate: 4.8,
  ),
  TravelDestination(
    id: 8,
    name: "Ulun Danu Temple",
    review: random.nextInt(300) + 25,
    price: 777,
    category: "popular",
    image: [
      "images/ulundanu1.jpg",
      "images/ulundanu2.jpg",
      "images/ulundanu3.jpg",
      "images/ulundanu4.jpg",
    ],
    location: "Bali, Indonesia",
    description: description,
    rate: 4.5,
  ),
  TravelDestination(
    id: 1,
    name: "Monkey Forest",
    review: random.nextInt(300) + 25,
    price: 920,
    category: 'recomend',
    image: [
      "images/ubud-monkey-forest1.jpg",
      "images/ubud-monkey-forest2.jpg",
      "images/ubud-monkey-forest3.jpg",
      "images/ubud-monkey-forest4.jpg",
    ],
    location: "Bali, Indoneisa",
    description: description,
    rate: 4.6,
  ),
  TravelDestination(
    id: 9,
    name: "Garuda Wisnu Kencana",
    review: random.nextInt(300) + 25,
    category: "popular",
    price: 199,
    image: [
      "images/gwk1.jpg",
      "images/gwk2.jpg",
      "images/gwk3.jpg",
      "images/gwk4.jpg",
    ],
    location: "Bali, Indonesia",
    description: description,
    rate: 4.7,
  ),
  TravelDestination(
    id: 12,
    name: "Tanah Lot Temple",
    category: "recomend",
    review: random.nextInt(300) + 25,
    price: 499,
    image: [
      "images/tanah_lot1.jpg",
      "images/tanah_lot2.jpg",
      "images/tanah_lot3.jpg",
      "images/tanah_lot4.jpg",
    ],
    location: "Bali, Indonesia",
    description: description,
    rate: 4.8,
  ),
  TravelDestination(
    id: 14,
    name: "Lempuyang Temple",
    review: random.nextInt(300) + 25,
    category: "recomend",
    price: 99,
    image: [
      "images/Lempuyang-Temple1.jpg",
      "images/Lempuyang-Temple2.jpg",
      "images/Lempuyang-Temple3.jpg",
      "images/Lempuyang-Temple4.jpg",
    ],
    location: "Bali, Indonesia",
    description: description,
    rate: 4.7,
  ),
];
const description =
    'Travel places offer a wide array of experiences, each with its own unique charm and appeal. From stunning natural landscapes to historic landmarks, there is something for every traveler. Coastal TravelDestinations like tropical beaches invite relaxation with crystal-clear waters, while mountainous regions offer adventurous hiking trails and breathtaking views.';
