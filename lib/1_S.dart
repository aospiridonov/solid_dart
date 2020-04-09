//Single-responsibility principle
/*
  A class should only have a single responsibility, that is, 
  only changes to one part of the software's specification 
  should be able to affect the specification of the class.
*/

class News{
  String title;
  String text;
  bool modified = false;

  News({this.title, this.text});
  String toString() => ((!modified)?"Orign":"Modified") + ("\nTitle: ${title}\nText: ${text}");
  void update(String text) => {this.text = text, this.modified = true};
}