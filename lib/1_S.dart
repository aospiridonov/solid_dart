//Single-responsibility principle
/*
  A class should only have a single responsibility, that is, 
  only changes to one part of the software's specification 
  should be able to affect the specification of the class.
*/

import 'dart:convert';

class News{
  String title;
  String text;
  bool modified = false;

  News({this.title, this.text});
  String toString() => ("\nTitle: ${title}\nText: ${text}");
  void update(String text) => {this.text = text, this.modified = true};

//not single responsibility
  //String toJson() => "";
  //String toXml() => "";
  //to end more
}

class NewsPrinter {
  News news;
  NewsPrinter(this.news);
  String html()
  {
    return ''' 
      <div class="news">
      <h1>${this.news.title}</h1>
        <p>${this.news.text}</p>
      </div>
    ''';
  }

  String json()
  {
    return JsonEncoder().convert({
      'title': this.news.title,
      'text': this.news.text,
      'modified' : this.news.modified
    });
  }

  String xml()
  {
    return ''' 
      <news>
        <title>${this.news.title}</title>
        <text>${this.news.text}</text>
        <modified>${this.news.modified}</modified>
      </news>
    ''';
  }
}