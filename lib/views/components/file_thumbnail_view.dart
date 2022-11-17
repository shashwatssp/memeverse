import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memeverse/state/image_upload/models/image_with_aspect_ratio.dart';
import 'package:memeverse/state/image_upload/models/thumbnail_request.dart';
import 'package:memeverse/state/image_upload/providers/thumbnail_provider.dart';
import 'package:memeverse/views/components/animations/loading_animation_view.dart';
import 'package:memeverse/views/components/animations/small_error_animation_view.dart';

class FileThumbnailView extends ConsumerWidget {
  final ThumbnailRequest thumbnailRequest;

  const FileThumbnailView({
    Key? key,
    required this.thumbnailRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thumbnail = ref.watch(thumbnailProvider(
      request: thumbnailRequest,
    ));

    return thumbnail.when(
      data: (ImageWithAspectRatio) {
        return AspectRatio(
          aspectRatio: ImageWithAspectRatio.aspectRatio,
          child: ImageWithAspectRatio.image,
        );
      },
      loading: () {
        return const LoadingAnimationView();
      },
      error: (error, stackTrace) {
        return const SmallErrorAnimationView();
      },
    );
  }
}
