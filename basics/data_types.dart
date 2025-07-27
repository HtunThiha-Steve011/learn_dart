void main() {

  // Dart is type-safe
  // Main basic data types - int, String, double, Null
  int zero = 0;
  String greeting = 'Hello!';
  double price = 18.5;
  Null nullValue = null;

  describeVariable(zero, 'zero');
  describeVariable(greeting, 'greeting');
  describeVariable(price, 'price');
  describeVariable(nullValue, 'nullValue');

  // Dart is null-safe
  // Use ? to indicate a variable as "nullable"
  int? a = null;
  describeVariable(a, 'a before value change');
  a = 5;
  describeVariable(a, 'a after value change');

  // dynamic - close type-check entirely for a variable (including null-check)
  // Note: dynamic is not a type, it is the option to close type-checking
  // dyanmic is not under Object
  dynamic randomElement; // this can be anything (before assignment, this is null)
  describeVariable(randomElement, 'randomElement');

  // Every variable type is under Object
  Object x; // this can be any object but not null
  Object? y; // can be null here
  // describeVariable(x, 'x'); // trying to do this will result in error because x is not initialized yet
  x = 'Hello world';
  describeVariable(x, 'x');
  describeVariable(y, 'y');
}

// prints variable name, value and runtime type
void describeVariable(dynamic variable, String name) {
  // String interpolation: $ for direct name insert ${} for more
  print('📦 Variable: $name = $variable');
  print('⚙️  Runtime type: ${variable.runtimeType}\n');
}