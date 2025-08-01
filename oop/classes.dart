// Class example
class Person {
  String name;
  int age;
  String gender;
  
  // Default constructor
  Person(this.name, this.age, this.gender);

  // Overloaded constructors with names
  Person.male(this.name, this.age) : this.gender = 'M';
  Person.female(this.name, this.age) : this.gender = 'F';

  // Note: getters and setters are not used frequently like in Java or C#
  // This is by language design, Read more: https://dart.dev/effective-dart/usage#dont-wrap-a-field-in-a-getter-and-setter-unnecessarily

  // class method
  void greet() {
    if (this.gender == 'M') {
      print('👦 Hello, I am $name and $age years old.');      
    } else if (this.gender == 'F') {
      print('👧 Hello, I am $name and $age years old.');
    }
  }
}

// abstract class and inheritance example
abstract class LivingEntity {
  int id;
  int age;
  double hungerTolerance;

  LivingEntity(this.id, this.age, this.hungerTolerance);
  LivingEntity.mediumHungerTolerance(this.id, this.age) : this.hungerTolerance = 5.0;

  // abstract method
  void eat();

  void describeLivingEntity() {
    print('🧬 LivingEntity ID: $id');
    print('❤️  age: $age');
    print('🍖 hungerTolerance: $hungerTolerance');
  }
}

// Dog inherits LivingEntity
class Dog extends LivingEntity {
  String name;
  double tameFactor;

  Dog(super.id, super.age, super.hungerTolerance, this.name, this.tameFactor);
  Dog.mediumHungerTolerance(int id, int age, this.name, this.tameFactor)
    : super.mediumHungerTolerance(id, age);


  @override
  void eat() {
    print('🐕 Dog $name is eating.');
  }
}