import 'package:solid_dart/1_S.dart' as S;

void main(List<String> arguments) {
  var news = new S.News(title:"Single-responsibility principle", text:"A class should only have a single...");
  print(news);
  news.update("... modified");
  print(news);
}
