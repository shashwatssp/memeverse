import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:memeverse/state/image_upload/notifiers/image_upload_notifier.dart';
import 'package:memeverse/state/image_upload/typedefs/is_loading.dart';

final imageUploaderProvider =
    StateNotifierProvider<ImageUploadNotifier, IsLoading>(
  (ref) => ImageUploadNotifier(),
);
