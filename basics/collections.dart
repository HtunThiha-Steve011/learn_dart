import 'data_types.dart';

void main() {
  runLists();
}

void runLists() {
  print('===== LISTS =====');

  // List (AKA Array) - collection of objects
  List<int> integersList = [200, 10, 5];

  describeList(integersList, 'integersArr');

  // Non-generic list (can hold any data type)
  List randomElementsList = [1, 'Hi', true, 12.98, null];
  // Notice that the generic type is now changed to <dynamic>
  describeList(randomElementsList, 'randomElementsList');

  // Iterating through lists
  print('===== Iterating integersList =====');
  // 1. for with index
  for (var i = 0; i < integersList.length; i++) {
    print('integerList\'s value #${i+1}: ${integersList[i]}');
  }
  // 2. for without index (for in)
  for (int integer in integersList) {
    // no indexing here anymore
    print('integerList\'s one element value: $integer');
  }

  // Lists have their own methods built-in to use
  List<String> fruitsList = ['Apple', 'Orange', 'Banana', 'Cherry'];
  // more methods and properties on docs
  print('===== fruitsList description =====');
  print('''
    first element: ${fruitsList.first}
    last element: ${fruitsList.last}
    reversed list: ${fruitsList.reversed}
  ''');

  // Since List is under Iterable<E>, it has access to Java Stream API similar methods (more on this later)
  // methods like map, reduce etc.
  List<String> modifiedFruitsList = fruitsList.map((fruit) {
    return 'mod $fruit';
  }).toList();
  describeList(modifiedFruitsList, 'modifiedFruitsList');

  int totalFromIntegersList = integersList.reduce((a, b) {
    return a + b;
  }).toInt();
  describeVariable(totalFromIntegersList, 'totalFromIntegersList');

  // Absolute vs reference
  List<int> firstList = [1, 2, 3];
  List<int> secondList = firstList;
  secondList[0] = 100000000;
  
  // will notice that both first elements are changed just because of secondList[0]
  describeList(firstList, 'firstList');
  describeList(secondList, 'secondList');

  // shallow copy like with toList() for clone without referencing same memory
  List<int> thirdList = secondList.toList();
  thirdList[0] = 572053;
  // will notice that change is not affected to second list
  describeList(secondList, 'secondList');
  describeList(thirdList, 'thirdList');
}

void describeList(List list, String name) {
  print('📦 Variable: $name = $list');
  // Notice that runTimeType generic is in accordance with the variable type
  print('⚙️  Runtime type: ${list.runtimeType}\n');
}