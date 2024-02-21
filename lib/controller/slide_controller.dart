import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  late int activeImage = 0;

  final carouselController = CarouselController();

  final urlImages = [
    'http://reviews.com.np/uploads/article/latest-bike-offer-in-nepal-2020-exchange-finance-scheme/latest-bike-offer-in-nepal-2020-exchange-finance-scheme.jpg',
    'https://i.imgur.com/BOuoudn.png',
    'https://reviews.com.np/uploads/images/Upasana/29-09-20/VG-Suzuki-Offers-Body.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0XgAv6HmnXWmh2hrkm1kKRM9EwD3VSfIhNBTzx1rbueVxpCzROOg4fZs6mm9Hf0zxcpc&usqp=CAU',
    'https://img.indianautosblog.com/crop/1200x675/2020/10/06/hero-mega-service-carnival-4f1c.jpg',
  ];

  onPageChanged(int index, CarouselPageChangedReason reason) {
    activeImage = index;

    update();
  }

  animatedToSlide(int index) => carouselController.animateToPage(index);
}
