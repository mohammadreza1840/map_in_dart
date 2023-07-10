import 'dart:io';

void main() {
  Set<List<Map<String, String>>> libraries = {
    [
      {
        "name book": "Harry Potter",
        "the writer": "Stephen King",
        "Issue": "Action",
        "Price": "122"
      },
      {
        "name book": "Hunger Games",
        "the writer": "J. K. Rowling",
        "Issue": "Action",
        "Price": "133"
      },
      {
        "name book": "The Book Thief",
        "the writer": "Stephen King",
        "Issue": "Action",
        "Price": "122"
      },
      {
        "name book": "The Fault in Our Stars",
        "the writer": "William Shakespeare",
        "Issue": "Comedy",
        "Price": "133"
      },
      {
        "name book": "The Hobbit",
        "the writer": "Stephen King",
        "Issue": "Comedy",
        "Price": "122"
      },
      {
        "name book": "The Diary of a Young Girl",
        "the writer": "William Shakespeare",
        "Issue": "Comedy",
        "Price": "144"
      },
      {
        "name book": "The Perks of Being a Wallflower",
        "the writer": "Stephen King",
        "Issue": "Drama",
        "Price": "144"
      },
      {
        "name book": "To Kill a Mockingbird",
        "the writer": "J. R. R. Tolkien",
        "Issue": "Drama",
        "Price": "123"
      },
      {
        "name book": "The Hate U Give",
        "the writer": "William Shakespeare",
        "Issue": "Drama",
        "Price": "123"
      },
      {
        "name book": "Divergent",
        "the writer": "George Orwell",
        "Issue": "Drama",
        "Price": "3232"
      },
      {
        "name book": "The Catcher in the Rye",
        "the writer": "Paulo Coelho",
        "Issue": "Drama",
        "Price": "5464"
      },
    ]
  };
  print('welcom to the libraries');
  print('converter:');
  print('1: Display different lists from the library :');
  print('2: Search in the library:');
  print('3: Leaving the library');

  print('enter the select:');
  int select = int.parse(stdin.readLineSync()!);

  while (select != 3) {
    switch (select) {
      case 1:
        print('1:Based on the name of the book :');
        print("2:Based on the author's name  :");
        print('3:Based on the topic :');
        print('4:Based on the Price :');
        print('5:coming back :');

        print('enter the select:');
        int select1 = int.parse(stdin.readLineSync()!);

        while (select1 != 5) {
          switch (select1) {
            case 1:
              for (var element in libraries) {
                for (var mm in element) {
                  mm.forEach((key, value) {
                    if (key == "name book") {
                      print('${key}: ${value}');
                    }
                  });
                  print('............');
                }
                ;
              }
              break;

            case 2:
              for (var element in libraries) {
                for (var mm in element) {
                  mm.forEach((key, value) {
                    if (key == "the writer") {
                      print('${key}: ${value}');
                    }
                    if (key == "name book") {
                      print('${key}: ${value}');
                    }
                  });
                  print('............');
                }
                ;
              }
              break;

            case 3:
              for (var element in libraries) {
                for (var mm in element) {
                  mm.forEach((key, value) {
                    if (key == "Issue") {
                      print('${key}: ${value}');
                    }
                    if (key == "name book") {
                      print('${key}: ${value}');
                    }
                  });
                  print('............');
                }
                ;
              }
              break;

            case 4:
              for (var element in libraries) {
                for (var mm in element) {
                  mm.forEach((key, value) {
                    if (key == "Price") {
                      print('${key}: ${value}');
                    }
                    if (key == "name book") {
                      print('${key}: ${value}');
                    }
                  });
                  print('............');
                }
                ;
              }
              break;
          }
          break;
        }

        if (select1 == 5) {
          print('converter:');
          print('1: Display different lists from the library :');
          print('2: Search in the library:');
          print('3: coming back');

          print('enter the select:');
          select = int.parse(stdin.readLineSync()!);
        }

      case 2:
        print('1:Search by book name :');
        print("2:Search by author name  :");
        print('3:Search by topic :');
        print('4:Search by price :');
        print('5:coming back:');

        print('enter the select:');
        int select2 = int.parse(stdin.readLineSync()!);

        while (select2 != 5) {
          switch (select2) {
            case 1:
              print(
                  'Enter the name of the desired book:  (Type to exit : exit)');
              var bb = stdin.readLineSync();
              if (bb == 'exit') {
                print('1:Search by book name :');
                print("2:Search by author name  :");
                print('3:Search by topic :');
                print('4:Search by price :');
                print('5:coming back:');

                print('enter the select:');
                select2 = int.parse(stdin.readLineSync()!);
              } else {
                for (var element in libraries) {
                  for (var mm in element) {
                    mm.forEach((key, value) {
                      if (key == "name book") {
                        List valueaa = value.split(' ');
                        for (var element in valueaa) {
                          if (bb == element) {
                            print('${key}: ${value}');
                            print(mm);
                          }
                        }
                      }
                    });
                  }
                  ;
                }
              }
              break;

            case 2:
              print(
                  'Enter the name of the desired author:  (Type to exit : exit)');
              var bb = stdin.readLineSync();
              if (bb == 'exit') {
                print('1:Search by book name :');
                print("2:Search by author name  :");
                print('3:Search by topic :');
                print('4:Search by price :');
                print('5:coming back:');

                print('enter the select:');
                select2 = int.parse(stdin.readLineSync()!);
              } else {
                for (var element in libraries) {
                  for (var mm in element) {
                    mm.forEach((keyy, valuee) {
                      if (keyy == "the writer") {
                        List valueaa = valuee.split(' ');
                        for (var element in valueaa) {
                          if (bb == element) {
                            print('${keyy}: ${valuee}');
                            print(mm);
                          }
                        }
                      }
                    });
                  }
                  ;
                }
              }
              break;
            case 3:
              print('Enter the name of the subject:  (Type to exit : exit)');
              var bb = stdin.readLineSync();
              if (bb == 'exit') {
                print('1:Search by book name :');
                print("2:Search by author name  :");
                print('3:Search by topic :');
                print('4:Search by price :');
                print('5:coming back:');

                print('enter the select:');
                select2 = int.parse(stdin.readLineSync()!);
              } else {
                for (var element in libraries) {
                  for (var mm in element) {
                    mm.forEach((keyy, valuee) {
                      if (keyy == "Issue") {
                        List valueaa = valuee.split(' ');
                        for (var element in valueaa) {
                          if (bb == element) {
                            print('${keyy}: ${valuee}');
                            print(mm);
                          }
                        }
                      }
                    });
                  }
                  ;
                }
              }
              break;
            case 4:
              print('Enter your desired price: (Type to exit : exit)');
              var bb = stdin.readLineSync();
              if (bb == 'exit') {
                print('1:Search by book name :');
                print("2:Search by author name  :");
                print('3:Search by topic :');
                print('4:Search by price :');
                print('5:coming back:');

                print('enter the select:');
                select2 = int.parse(stdin.readLineSync()!);
              } else {
                for (var element in libraries) {
                  for (var mm in element) {
                    mm.forEach((keyy, valuee) {
                      if (keyy == "Price") {
                        List valueaa = valuee.split(' ');
                        for (var element in valueaa) {
                          if (bb == element) {
                            print('${keyy}: ${valuee}');
                            print(mm);
                          }
                        }
                      }
                    });
                  }
                }
                ;
              }
              break;
          }
        }
        if (select2 == 5) {
          print('converter:');
          print('1: Display different lists from the library :');
          print('2: Search in the library:');
          print('3: coming back');

          print('enter the select:');
          select = int.parse(stdin.readLineSync()!);
        }
    }
  }
  if (select == 3) {
    print('good bay');
  }
}