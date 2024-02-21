import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant.dart';
import '../controller/slide_controller.dart';
import 'sized_box.dart';

class CarouselSliderPage extends StatelessWidget {
  final SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              carouselController: sliderController.carouselController,
              options: CarouselOptions(
                height: 150,
                initialPage: 0,
                autoPlay: true,
                // pageSnapping: false,
                // reverse: true,
                viewportFraction: 1,
                // enableInfiniteScroll: false,
                // enlargeCenterPage: true,
                // enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 2),
                onPageChanged: sliderController.onPageChanged,
              ),
              itemCount: sliderController.urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = sliderController.urlImages[index];
                return buildImage(urlImage, index);
              }),
          SizedBoxH10(),
          buildIndicator(),
          SizedBoxH10(),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 0),
        width: double.infinity,
        // color: primaryColor,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => GetBuilder<SliderController>(
        builder: (controller) => AnimatedSmoothIndicator(
          activeIndex: controller.activeImage,
          count: controller.urlImages.length,
          //click on dot to change
          onDotClicked: controller.animatedToSlide,
          effect: ExpandingDotsEffect(
              dotColor: Colors.black45,
              dotHeight: 8,
              dotWidth: 10,
              activeDotColor: primaryColor),
        ),
      );
}
