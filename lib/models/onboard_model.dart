class OnboardModel {
  String image, name;

  OnboardModel({required this.image, required this.name});

  bool get isLocalImage => !image.startsWith('http');
}

List<OnboardModel> onboarding = [
  OnboardModel(
    image: 'images/images1.jpg',
    name: 'Explore Bali with us.',
  ),
  OnboardModel(
    image: 'images/images2.jpg',
    name: "Natural Beauty of Bali",
  ),
  OnboardModel(
    image: 'images/images4.jpg',
    name: 'Peacefull Mind in Nature',
  ),
  OnboardModel(
    image: 'images/images3.jpg',
    name: 'Bright of mountain Range',
  ),
];
