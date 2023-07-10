import 'dart:io';

void main(List<String> args) async {
  List<Map<String, String>> books = [
    {"name": "a", "author": "aa", "ganre": "w", "price": "2000"},
    {"name": "b", "author": "bb", "ganre": "w", "price": "20000"},
    {"name": "c", "author": "aa", "ganre": "ce", "price": "1200"},
    {"name": "d", "author": "cc", "ganre": "f", "price": "2600"}
  ];

  print('welcom to the libraries');
  print('converter:');
  print('1: Display different lists from the library :');
  print('2: Search in the library:');
  print('3: Leaving the library');
  print('---------------------------');

  print('enter the select:');
  int? s = int.tryParse(await stdin.readLineSync()!);
  if (s == null || s < 1 || s > 3) {
    print("input is not currect!!");
    return;
  }

  while (true) {
    //Close App
    if (s == 3) {
      print("good by");
      break;
    }

    //Fetch from List
    if (s == 1) {
      print('1:Based on the name of the book :');
      print("2:Based on the author's name  :");
      print('3:Based on the topic :');
      print('4:Based on the Price :');
      print('5:coming back :');
      print('---------------------------');

      print('enter the select:');
      int? a = int.tryParse(await stdin.readLineSync()!);
      if (a == null || a < 1 || a > 5) {
        print("input is not currect!!");
      }
      if (a == 1) {
        print(books.map((e) => e['name']).toSet());
      }
      if (a == 2) {
        print(books.map((e) => e['author']).toSet());
      }
      if (a == 3) {
        print(books.map((e) => e['ganre']).toSet());
      }
      if (a == 4) {
        print(books.map((e) => {"name": e['name'], "price": e['price']}));
      }
    }

    //Search in List
    if (s == 2) {
      print('1:Search by book name :');
      print("2:Search by author name  :");
      print('3:Search by topic :');
      print('4:Search by price :');
      print('5:coming back:');
      print('---------------------------');

      print('enter the select:');
      int? a = int.tryParse(await stdin.readLineSync()!);
      if (a == null || a < 1 || a > 5) {
        print("input is not currect!!");
      }
      if (a == 1) {
        print('enter the name:');
        String data = stdin.readLineSync()!;
        print(books
            .where((element) => element['name'] == data)
            .map((e) => {"name": e['name'], "price": e['price']}));
      }

      if (a == 2) {
        print('enter the author`s name:');
        String data = stdin.readLineSync()!;
        print(books.where((element) => element['author'] == data).map((e) =>
            {"name": e['name'], "author": e['author'], "price": e['price']}));
      }

      if (a == 3) {
        print('enter the topic:');
        String data = stdin.readLineSync()!;
        print(books.where((element) => element['ganre'] == data).map((e) =>
            {"name": e['name'], "ganre": e['ganre'], "price": e['price']}));
      }

      if (a == 4) {
        print('enter the price:');
        String data = stdin.readLineSync()!;
        print(books
            .where((element) => element['price'] == data)
            .map((e) => {"name": e['name'], "price": e['price']}));
      }
    }

    print('converter:');
    print('1: Display different lists from the library :');
    print('2: Search in the library:');
    print('3: Leaving the library');
    print('---------------------------');

    print('enter the select:');
    s = int.tryParse(await stdin.readLineSync()!);
    if (s == null || s < 1 || s > 3) {
      print("input is not currect!!");
      break;
    }
  }
}
