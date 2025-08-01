import 'classes.dart';

void main() {
  Person person1 = Person('Steve', 20, 'M');
  Person person2 = Person.female('Sally', 19);

  print('===== Person class demo =====');
  person1.greet();
  person2.greet();
  print('');

  // Abstract class cannot be initialized; this will give compile-time error
  // LivingEntity entity = LivingEntity(1, 19, 4.5);

  print('===== LivingEntity and Dog class demo');
  Dog dog1 = Dog.mediumHungerTolerance(1, 2, 'Milo', 10.0);
  dog1.describeLivingEntity();
  dog1.eat();
}