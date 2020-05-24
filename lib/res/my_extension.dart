import 'dart:ui';

extension MyStringExtension on String {
  Color get toColor {
    return new Color(int.parse(this.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
