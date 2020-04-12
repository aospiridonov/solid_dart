import 'package:solid_dart/1_S.dart' as S;

void main(List<String> arguments) {
  var news = new S.News(title:"Single-responsibility principle", text:"A class should only have a single...");
  print(news);
  
  print(S.NewsPrinter(news).html());
  print(S.NewsPrinter(news).json());
  print(S.NewsPrinter(news).xml());
}
