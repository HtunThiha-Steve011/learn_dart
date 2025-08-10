void main() {
  runVariables();
}

void runVariables() {

  // basic data-types: int, double, String, bool
  int zero = 0;
  double price = 12.99;
  String greeting = 'Hi';
  bool pigsCanFly = false;

  print('===== BASIC DATA TYPES =====');
  describeVariable('zero', zero);
  describeVariable('price', price);
  describeVariable('greeting', greeting);
  describeVariable('pigsCanFly', pigsCanFly);

  // num: parent type of int and double (can be either of them)
  num anotherPrice = 12;
  print('===== DATA TYPE: num =====');
  // runtime type will be either int or double
  describeVariable('anotherPrice', anotherPrice);
  anotherPrice = 12.08;
  // notice runTimeType has changed to 'double' from int
  describeVariable('anotherPrice', anotherPrice);

  print('===== DATA TYPE: var =====');
  // var: type-inference (infer type from right side)
  // this works with any variable type
  var x = 'New thing';
  // can't change data type because x is already inferred as 'String'
  // x = 5; (this will cause compile error)
  describeVariable('x', x);
  x = 'Changed String';
  describeVariable('x', x);

  // Dart is null-safe
  // can't set any variable to null by default
  // String x = null; // will cause compile error
  // Use ? to denote a variable as "nullable"
  String? nullableString = null;
  print('===== DATA TYPE: null =====');
  describeVariable('nullableString', nullableString);

  // Null itself is a type for null
  Null absoluteNullVariable = null;
  describeVariable('absoluteNullVariable', absoluteNullVariable);

  // dynamic: closes the type-check for the variable entirely
  // Acts like JavaScript variable without type at all
  dynamic iCanBeAnything;
  iCanBeAnything = 'Hello World';
  print('===== DATA TYPE: dynamic');
  describeVariable('iCanBeAnything', iCanBeAnything);
  iCanBeAnything = 2;
  describeVariable('iCanBeAnything', iCanBeAnything);
  iCanBeAnything = 12.97;
  describeVariable('iCanBeAnything', iCanBeAnything);
  iCanBeAnything = true;
  describeVariable('iCanBeAnything', iCanBeAnything);
  iCanBeAnything = null;
  describeVariable('iCanBeAnything', iCanBeAnything);
}

// "dynamic" here allows variable input to be of any type
void describeVariable(String name, dynamic variable) {
  // string interpolation: $ for direct insert with name, ${} for additional operations
  print('📦 Variable: $name = $variable');
  print('⚙️  Runtime type: ${variable.runtimeType}\n');  
}