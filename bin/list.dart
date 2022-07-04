int tracingFibonacci(int n) {
  int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  return result;
}

void main(List<String> args) {
  List<String> listAPI = [];
  List<String> list = ['John', 'Joe', 'Jane', 'Jack'];

  // append a new element to the list
  list.add('Jane');
  print(list);

  // remove an element from the list
  list.remove('John');
  print(list);

  // remove an element from the list at a specific index
  list.removeAt(1);
  print(list);

  // remove all elements from the list
  list.clear();
  print(list);

  // check if an element is in the list
  print(list.contains('John'));

  // get the index of an element
  print(list.indexOf('John'));

  // get the last index of an element
  print(list.lastIndexOf('John'));

  // get the length of the list
  print(list.length);

  // get the first element of the list
  print(list.first);

  // get the last element of the list
  print(list.last);

  // get the element at a specific index
  print(list.elementAt(1));

  // append a list to the end of the list
  listAPI.addAll(list);
  print(listAPI);

  // insert a list at a specific index
  listAPI.insertAll(0, list);
  print(listAPI);

  // Insert a element at a specific index
  listAPI.insert(0, 'John');
  print(listAPI);
  listAPI.insert(1, 'Doe');
  print(listAPI);

  // remove a element in range of index
  list.removeRange(0, 2);
  print(list);

  list.removeLast();
  print(list);

  list.removeWhere((element) => element == 'John');
  print(list);

  // listAPI = list.sublist(0, 2);
  for (String name in listAPI) {
    print(name);
  }

  list.sort(((a, b) => b.compareTo(a)));
  print(list);
  if (list.every((element) => element.startsWith('J'))) {
    print('All names start with J');
  } else {
    print('Not all names start with J');
  }

  listAPI = list.map((item) => '$item custom').toList();

  // for in loop
  for (String name in list) {
    print(name);
  }

  // for each loop
  list.forEach(print);

  int result = tracingFibonacci(100);
  print(result);
}
