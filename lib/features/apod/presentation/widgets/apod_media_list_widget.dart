import 'package:flutter/material.dart';

import '../../domain/entities/apod_entity.dart';
import 'media_tile_widget.dart';

class ApodMediaListWidget extends StatelessWidget {
  const ApodMediaListWidget({
    required this.apodMediaList,
    required this.onMediaClicked,
    required this.onRefresh,
    required this.onScroll,
    required this.controller,
    super.key,
  });

  final ScrollController controller;
  final List<ApodEntity> apodMediaList;
  final Function(ApodEntity) onMediaClicked;
  final Future<void> Function() onRefresh;
  final Function() onScroll;


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: CustomScrollView(
        controller: this.controller,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 6,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return InkWell(
                    onTap: () => onMediaClicked(apodMediaList[index]),
                    child: MediaTileWidget(
                      title: apodMediaList[index].title,
                      imageUrl: '${apodMediaList[index].url}',
                    ),
                  );
                },
                childCount: apodMediaList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
