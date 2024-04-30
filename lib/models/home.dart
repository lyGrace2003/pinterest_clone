import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../widgets/navigation_bar.dart';
import 'controller.dart';
import 'details.dart';


class HomeView extends StatelessWidget {
  HomeView({super.key});

  final AppController homeController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
      
                /// TapBar
                Expanded(flex: 1, child: _buildTabBar()),
      
                /// Pictures
                Expanded(
                  flex: 13,
                  child: Obx(
                    () => homeController.isLoading.value
                        ? Center(
                            child: LoadingAnimationWidget.flickr(
                              rightDotColor: Colors.black,
                              leftDotColor: const Color(0xfffd0079),
                              size: 30,
                            ),
                          )
                        : Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: GridView.custom(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              gridDelegate: SliverQuiltedGridDelegate(
                                crossAxisCount: 4,
                                mainAxisSpacing: 4,
                                crossAxisSpacing: 4,
                                repeatPattern:
                                QuiltedGridRepeatPattern.inverted,
                                pattern: const [
                                  QuiltedGridTile(2, 2),
                                  QuiltedGridTile(1, 1),
                                  QuiltedGridTile(2, 1),
                                  QuiltedGridTile(1, 1),
                                ],
                              ),
                              childrenDelegate: SliverChildBuilderDelegate(
                                  childCount: homeController.photos.length,
                                  (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) =>
                                            DetailsView(index: index),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: homeController.photos[index].id!,
                                    child: Container(
                                      margin: const EdgeInsets.all(2),
                                      child: CachedNetworkImage(
                                        imageUrl: homeController
                                            .photos[index].urls!['small']!,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        placeholder: (context, url) =>
                                            const CupertinoActivityIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(
                                          Icons.image_not_supported_rounded,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                  ),
                )
              ],
            ),
          ),
          const NavigationBarWidget(selectedItem: 'home'),
        ],
      ),
    );
  }

  /// Custom TabBar
 Widget _buildTabBar() {
  return Center(
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: homeController.orders.length,
      itemBuilder: (ctx, i) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              homeController.selectedIndex.value = i;
              homeController.ordersFunc(homeController.orders[i]);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                homeController.orders[i],
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: i == homeController.selectedIndex.value
                      ? TextDecoration.underline 
                      : TextDecoration.none,
                  decorationColor: Colors.white,
                  ),
                ),
            ),
            ),
          );
        },
      ),
  );
  }
}
