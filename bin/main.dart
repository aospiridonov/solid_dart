import 'package:solid_dart/1_S.dart' as S;
import 'package:solid_dart/2_O.dart' as O;

void funcS(){
  var news = new S.News(title:"Single-responsibility principle", text:"A class should only have a single...");
  print(news);
  
  print(S.NewsPrinter(news).html());
  print(S.NewsPrinter(news).json());
  print(S.NewsPrinter(news).xml());
}

void funcO(){
  var areaCalculator = new O.AreaCalculator([
    new O.Circle(10),
    new O.Square(20),
    new O.Triangle(1, 2, 3),
    new O.Rectangle(5, 10) ]);
  print("sum area = ${areaCalculator.sum()}");
}

void main(List<String> arguments) {
  //funcS();
  funcO();
}
