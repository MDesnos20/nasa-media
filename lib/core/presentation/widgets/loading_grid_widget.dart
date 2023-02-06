import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingGridWidget extends StatelessWidget {
  const LoadingGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
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
          delegate: SliverChildBuilderDelegate((context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.black12,
              highlightColor: Colors.white10,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                ),
              ),
            );
          }, childCount: 21,),
        ),
      )
    ],);
  }
}
