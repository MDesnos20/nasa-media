import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/spacing.dart';
import '../../domain/entities/apod_entity.dart';
import '../blocs/download/download_cubit.dart';

class ApodWidget extends StatelessWidget {
  const ApodWidget({
    required this.media,
    super.key, 
  });

  final ApodEntity media;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const AppGap.regular(),
          Center(
            child: CachedNetworkImage(
              imageUrl: '${media.hdurl}',
              fit: BoxFit.contain,
            ),
          ),
          const AppGap.regular(),
          Text(media.title),
          const AppGap.regular(),
          Text(media.date),
          const AppGap.regular(),
          Text(media.explanation),
          AppGap.regular(),
          /*ElevatedButton(onPressed: () {
            BlocProvider.of<DownloadCubit>(context).disposePort();
            Navigator.pop(context);
          }, child: Text('Foobar'))*/
        ],
      ),
    );
  }
}
