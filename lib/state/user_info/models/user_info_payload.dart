import 'dart:collection';

import 'package:flutter/foundation.dart' show immutable;
import 'package:memeverse/state/constants/firebase_field_name.dart';
import 'package:memeverse/state/posts/typedefs/user_id.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super(
          {
            FirebaseFieldName.userId: userId,
            FirebaseFieldName.displayName: displayName ?? '',
            FirebaseFieldName.email: email ?? '',
          },
        );
}
