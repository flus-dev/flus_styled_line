<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

### FlusDottedLinePainter

```dart
/// 기본 점선
CustomPaint(
  painter: FlusDottedLinePainter(),
  child: const Text('기본 점선'),
)

/// 색상 변경
CustomPaint(
  painter: FlusDottedLinePainter()..color = Colors.red,
  child: const Text('색상 변경'),
)


/// 간격 & 길이 변경
CustomPaint(
  painter: FlusDottedLinePainter()
    ..dottedGap = 8
    ..dottedLength = 8,
  child: const Text('간격 & 길이 변경'),
)

/// strokeWidth 변경
CustomPaint(
  painter: FlusDottedLinePainter()..strokeWidth = 10,
  child: Container(
    margin: const EdgeInsets.only(top: 10),
    child: const Text('strokeWidth 변경'),
  ),
)

/// strokeWith & 간격 & 길이 변경
CustomPaint(
  painter: FlusDottedLinePainter()
    ..strokeWidth = 10
    ..dottedGap = 8
    ..dottedLength = 8,
  child: Container(
    margin: const EdgeInsets.only(top: 10),
    child: const Text('strokeWidth & 간격 & 길이 변경'),
  ),
)

/// strokeCap & strokeWith & 간격 & 길이 변경
CustomPaint(
  painter: FlusDottedLinePainter()
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10
    ..dottedGap = 20
    ..dottedLength = 1,
  child: Container(
    margin: const EdgeInsets.only(top: 10),
    child: const Text('strokeCap & strokeWidth & 간격 & 길이 변경'),
  ),
)
```

![FlusDottedLinePainter examples](/assets/images/flus_dotted_line_painter_example.jpg)

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
