import 'dart:io';

class Shape{
  double? height,width;
  Shape()
  {
    print("Enter Height :");
    height=double.parse(stdin.readLineSync()!);
    print("Enter Width :");
    width=double.parse(stdin.readLineSync()!);
  }
}
class Triangle extends Shape{
  void area()
  {
    //Shape shape=Shape();
    print("Area of Triangle is: ${height!*width!*0.5}");
  }
}
class Rectangle extends Shape {
  void area() {
   // Shape shape = Shape();
    print("Area of Rectangle is: ${height! * width!}");
  }
}
void areaOfShape()
{
  Triangle t1=Triangle();
  t1.area();
  Rectangle r1=Rectangle();
  r1.area();
}
