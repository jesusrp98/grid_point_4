# 4-Point Grid

[![Package](https://img.shields.io/pub/v/grid_point_4.svg?style=for-the-badge)](https://pub.dartlang.org/packages/grid_point_4)
[![Patreon](https://img.shields.io/badge/Support-Patreon-orange.svg?style=for-the-badge)](https://www.patreon.com/jesusrp98)
[![License](https://img.shields.io/github/license/jesusrp98/grid_point_4.svg?style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.en.html)

This package allows developers to easily use the 4-point grid system in Flutter. For more information, please take a look at [this link](https://webflow.com/blog/why-were-using-a-4-point-grid-in-webflow).

<p align="center">
  <img src="https://raw.githubusercontent.com/jesusrp98/grid_point_4/main/screenshots/0.png" width="415" hspace="8">
</p>

## Example

If you want to take a deeper look at the example, take a look at the [example](https://github.com/jesusrp98/row_item/tree/master/example) folder provided with the project.

### GridSpacing

The `GridSpacing` class contains a variety of static members that helps to implement the `4-point grid system` for Flutter.

 - The `s*` members are the absolute `double` values than can be used for `EdgeInsetsGeometry` and other spacing elements.

- On the other hand, the `gap*` members use the `gap` package, that creates a widget that takes a fixed amount of space in the direction of its parent. For more information about this package works, take a look at its [pub.dev link](https://pub.dev/packages/gap).

``` dart
// Equals to: 64.0
GridSpacing.s64

// Equals to: Gap(64.0)
GridSpacing.gap64
```

### `separateWith` extension

This extension is useful to separate all the elements inside a widget list, using anykind of widget, but especially `GridSpacing.gap*` widgets.

Credits to [Jaime Blasco](https://twitter.com/JamesBlasco) that inspired the creation of this extension.

``` dart
[
    Text('Hello'),
    Text('World'),
].separateWith(
    GridSpacing.gap16,
)
```

## Getting Started

This project is a starting point for a Dart [package](https://flutter.io/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our [online documentation](https://flutter.io/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Built with

- [Flutter](https://flutter.dev/) - Beautiful native apps in record time.
- [Android Studio](https://developer.android.com/studio/index.html/) - Tools for building apps on every type of Android device.
- [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined.

## Authors

- **Jesús Rodríguez** - you can find me on [GitHub](https://github.com/jesusrp98), [Twitter](https://twitter.com/jesusrp98) & [Reddit](https://www.reddit.com/user/jesusrp98).

## License

This project is licensed under the GNU GPL v3 License - see the [LICENSE](LICENSE) file for details.
