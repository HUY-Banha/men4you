import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:men4you/data/models/thumnail_model.dart';
import 'package:men4you/data/repositories/thumnail_repository.dart';
import 'package:men4you/presentations/home_screen/repository/product_repository.dart';
import 'package:men4you/presentations/home_screen/view/card_item_product.dart';
import 'package:men4you/presentations/home_screen/view/category_widget.dart';
import 'package:men4you/presentations/home_screen/view/list_product_widget.dart';
import 'package:men4you/widget/indicator_widget.dart';
import 'package:men4you/widget/nav_bar.dart';
import 'package:men4you/widget/thumnail_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final thumnailList = ThumnailRepository.thumnaillist();
  final shirtitem = ProductRepository.shirtlist();
  final tshirtitem = ProductRepository.tshirtlist();
  final featureitem = ProductRepository.featurelist();
  final pantitem = ProductRepository.pantlist();
  final shoeitem = ProductRepository.shoelist();
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIdex: 0),
      body: SafeArea(
        child: CustomScrollView(
          primary: true,
          slivers: [
            // header
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/png/slogo.png',
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryView(title: 'Promotion'),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    Expanded(
                      child: ThumnailWidget(
                          thumnailList: thumnailList,
                          controller: controller,
                          currentPageNotifier: _currentPageNotifier),
                    ),
                    const SizedBox(height: 20),
                    IndicatorWidget(
                        controller: controller, thumnailList: thumnailList),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryView(title: 'feature'.tr),
            ),
            // feature
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: featureitem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final feature = featureitem[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItemProduct(
                            imgUrl: feature.imgUrl,
                            price: feature.price.toStringAsFixed(2),
                            titleProduct: feature.title,
                            color1: feature.color1,
                            color2: feature.color2,
                            color3: feature.color3,
                            onPressed: () {
                              print('click item');
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryView(title: 'shirt'.tr),
            ),
            // shirt
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: shirtitem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final shirt = shirtitem[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItemProduct(
                            imgUrl: shirt.imgUrl,
                            price: shirt.price.toStringAsFixed(2),
                            titleProduct: shirt.title,
                            color1: shirt.color1,
                            color2: shirt.color2,
                            color3: shirt.color3,
                            onPressed: () {
                              print('click item');
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryView(title: 'tshirt'.tr),
            ),
            // t-shirt
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: tshirtitem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final tshirt = tshirtitem[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItemProduct(
                            imgUrl: tshirt.imgUrl,
                            price: tshirt.price.toStringAsFixed(2),
                            titleProduct: tshirt.title,
                            color1: tshirt.color1,
                            color2: tshirt.color2,
                            color3: tshirt.color3,
                            onPressed: () {
                              print('click item');
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: CategoryView(title: 'pant'.tr),
            ),
            // pants
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: pantitem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final pant = pantitem[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItemProduct(
                            imgUrl: pant.imgUrl,
                            price: pant.price.toStringAsFixed(2),
                            titleProduct: pant.title,
                            color1: pant.color1,
                            color2: pant.color2,
                            color3: pant.color3,
                            onPressed: () {
                              print('click item');
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryView(title: 'shoe'.tr),
            ),
            // shoe
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: shoeitem.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final shoe = shoeitem[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItemProduct(
                            imgUrl: shoe.imgUrl,
                            price: shoe.price.toStringAsFixed(2),
                            titleProduct: shoe.title,
                            color1: shoe.color1,
                            color2: shoe.color2,
                            color3: shoe.color3,
                            onPressed: () {
                              print('click item');
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
