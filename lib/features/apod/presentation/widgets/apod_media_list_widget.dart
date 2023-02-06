import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../domain/entities/apod_entity.dart';
import 'media_tile_widget.dart';

class ApodMediaListWidget extends StatelessWidget {
  const ApodMediaListWidget({
    required this.apodMediaList,
    required this.onMediaClicked,
    required this.onRefresh,
    required this.onScroll,
    required this.controller,
    required this.isLoading,
    super.key,
  });

  final ScrollController controller;
  final List<ApodEntity> apodMediaList;
  final Function(ApodEntity) onMediaClicked;
  final Future<void> Function() onRefresh;
  final Function() onScroll;
  final bool isLoading;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(2.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 3
                          : 6,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return InkWell(
                      onTap: () => onMediaClicked(apodMediaList[index]),
                      child: MediaTileWidget(
                        imageUrl: '${apodMediaList[index].url}',
                      ),
                    );
                  },
                  childCount: apodMediaList.length,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(2.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 3
                          : 6,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.black12,
                      highlightColor: Colors.white10,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                        ),
                      ),
                    );
                  },
                  childCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
