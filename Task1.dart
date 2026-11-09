import 'dart:math';

class GeometricObject {
  String color = "white";
  bool filled = false;

  GeometricObject();

  GeometricObject.withValues(this.color, this.filled);

  @override
  String toString() {
    return "Color: $color, Filled: $filled";
  }
}

class Triangle extends GeometricObject {
  double side1 = 1.0;
  double side2 = 1.0;
  double side3 = 1.0;

  Triangle();

  Triangle.withSides(this.side1, this.side2, this.side3);

  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends GeometricObject {
  double height = 1.0;
  double width = 1.0;

  Rectangle();

  Rectangle.withValues(
      this.width, this.height, String color, bool filled)
      : super.withValues(color, filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}