class FlusDottedShapeCorner {
  final double leftTop;
  final double rightTop;
  final double rightBottom;
  final double leftBottom;

  /// Specify the size of each rounded corner
  /// 각 코너의 크기를 지정합니다.
  const FlusDottedShapeCorner({
    this.leftTop = 0,
    this.rightTop = 0,
    this.rightBottom = 0,
    this.leftBottom = 0,
  });

  /// Set all rounded corners to one size
  /// 모든 코너를 하나의 크기로 설정합니다.
  FlusDottedShapeCorner.all(double radius)
      : leftTop = radius,
        rightTop = radius,
        rightBottom = radius,
        leftBottom = radius;
}
