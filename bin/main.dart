import 'package:solid_dart/1_S.dart' as S;
import 'package:solid_dart/2_O.dart' as O;
import 'package:solid_dart/3_L.dart' as L;

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

void funcL(){
  var developer1 = L.FrontendDeveloper("Alex");
  print(developer1.toString() + ' is have access: ${L.isHaveAccess(developer1)}' );
  var developer2 = L.BackendDeveloper("Victor");
  print(developer2.toString() + ' is have access: ${L.isHaveAccess(developer2)}' );
  var pm1 = L.ProductManager("Harry");
  //print(pm1.toString() + ' is have access: ${L.isHaveAccess(pm1)}' );
  print(pm1.toString());
}

void main(List<String> arguments) {
  //funcS();
  //funcO();
  funcL();
}
