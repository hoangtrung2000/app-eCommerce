import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Zero to Unicorn'),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )),
          const TitleSection(title: 'RECOMMEND'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          const TitleSection(title: 'POPULAR'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
