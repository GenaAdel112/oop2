abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(double length, double width, String color)
      : length = length,
        width = width,
        super(color);

  @override
  double getArea() {
    return length * width;
  }

  @override
  String toString() {
    return "Rectangle: length = $length, width = $width, color = $color";
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(double base, double height, String color)
      : base = base,
        height = height,
        super(color);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return "Triangle: base = $base, height = $height, color = $color";
  }
}