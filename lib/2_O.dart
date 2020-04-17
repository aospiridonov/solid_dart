//Open–closed principle
/*
  Software entities ... should be open for extension,
  but closed for modification.
*/

import 'dart:math' as math;

abstract class Shape {
  double area(); 
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => radius * radius * math.pi;
}

class Square implements Shape {
  double size;

  Square(this.size);

  @override
  double area() => size * size;
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Triangle implements Shape {
  double a, b, c;
  Triangle(this.a, this.b, this.c);

  @override
  double area() =>  a * b * c;
}

class AreaCalculator {
  var shapes = [];
  AreaCalculator(this.shapes);

  double sum() => shapes.fold(0, (accumulator, shape) => accumulator + shape.area());
}

