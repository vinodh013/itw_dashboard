import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends Notifier<bool> {
  @override
  build() {
    return false;
  }

  addstate() {
    if (state == false) {
      return state = true;
    } else {
      state = false;
    }
  }
}

final themeProvider = NotifierProvider<ThemeNotifier, bool>(
  () {
    return ThemeNotifier();
  },
);
