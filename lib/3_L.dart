// Liskov substitution principle
/* 
  Objects in a program should be replaceable with instances 
  of their subtypes without altering the correctness of that program.

  /it Subtype Requirement: Let 'q(x)' be a property provable about objects 'x' of type 'T'. 
  Then 'q(y)' should be true for objects 'y' of type 'S' where 'S' is a subtype of 'T'.
*/



class User{
  String name;
  User(this.name);
  @override
  String toString() => name;
}

class Member extends User {
  Member(String name) : super(name);
  bool isHaveAccess() => true;  //is q(x) 
}

class Guest extends User {
  Guest(String name) : super(name);
}

class Developer extends Member {
  String departament;
  Developer(String name, this.departament) : super(name);
  @override
  String toString() => '${name} ${departament} developer';
}

class FrontendDeveloper extends Developer {
  FrontendDeveloper(String name) : super(name, 'frontend');
} // FrontendDeveloper is subtype Developer

class BackendDeveloper extends Developer {
  BackendDeveloper(String name) : super(name, 'backend');
} // BackendDeveloper is subtype Developer

class ProductManager extends Guest{
  ProductManager(String name) : super(name);
  @override
  String toString() => '${name} is product manager';
}

bool isHaveAccess(Developer developer){
  return developer.isHaveAccess();
}


