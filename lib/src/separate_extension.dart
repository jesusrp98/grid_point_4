import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

extension SeparateExtension on List<Widget> {
  /// Separate elements of a widget list with a [separator] widget.
  ///
  /// If the list length equals to 1, no [separator] widget will be introduced.
  ///
  /// Credits to [Jaime Blasco](https://twitter.com/JamesBlasco).
  List<Widget> separateWith(Widget separator) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, separator, element],
        );

  /// Separate elements of a widget list with a `Gap` widget.
  List<Widget> separate(double dimension) => separateWith(Gap(dimension));
}
