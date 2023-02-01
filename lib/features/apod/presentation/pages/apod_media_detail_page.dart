import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../../../core/presentation/widgets/top_bar.dart';
import '../../domain/entities/apod_entity.dart';
import '../blocs/detail/apod_cubit.dart';
import '../widgets/apod_media_widget.dart';

class ApodMediaDetailPage extends StatefulWidget {
  const ApodMediaDetailPage({
    required this.apodDetailPageArgs,
    super.key,
  });

  final ApodDetailPageArgs apodDetailPageArgs;

  @override
  State<ApodMediaDetailPage> createState() => ApodMediaDetailPageState();
}

class ApodMediaDetailPageState extends State<ApodMediaDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: Text(widget.apodDetailPageArgs.apodDetail.title),
      ),
      body: ApodWidget(
        media: widget.apodDetailPageArgs.apodDetail,
      ),
    );
  }
}

class ApodDetailPageArgs {
  const ApodDetailPageArgs({
    required this.apodDetail,
  });

  final ApodEntity apodDetail;
}
