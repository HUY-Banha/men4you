import 'package:flutter/material.dart';
import 'package:men4you/data/repositories/home_repository.dart';
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
  final thumnailList = ThumnailModel.thumnaillist();
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
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20),
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
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
