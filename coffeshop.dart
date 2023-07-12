import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> items = [
    {"id": 1, "title": "esperso", "price": 2000},
    {"id": 2, "title": "bsperso1", "price": 4000},
    {"id": 3, "title": "wsperso2", "price": 2600},
    {"id": 4, "title": "zsperso3", "price": 1800},
    {"id": 5, "title": "asperso4", "price": 1500}
  ];
  List<Map<String, dynamic>> userSelects = [
    /* {"item_id": 1, "count": 10}, */
  ];
  print("welcome to Coffeshp");
  while (true) {
    //Print Coffe Menu
    print("Coffe Menu:");
    items.forEach((element) {
      print(
          '${element['id']}: ${element['title']} \nprice: ${element['price']}\n------------------------------------------\n');
    });
    print("Finish Ordering: Enter OK");

    print("Enter the selcet:");
    String userSelect = stdin.readLineSync()!;
    int? us = int.tryParse(userSelect);
    //Valdate Input
    while ((us == null && userSelect.toLowerCase() != "ok") ||
        (us != null && !items.any((element) => element['id'] == us))) {
      print('input not Currect!!\nPlease Try Again:');
      userSelect = stdin.readLineSync()!;
      us = int.tryParse(userSelect);
    }
    //finish
    if (us == null /* userSelect.toLowerCase() == "ok" */) {
      int sum = 0;
      /* userSelects.forEach((element) {
        int itemID = element['item_id'];
        int itemPrice =
            items.firstWhere((element) => element['id'] == itemID)['price'];
        sum += int.parse(itemPrice.toString()) *
            int.parse(element['count'].toString());
      }); */
      /* userSelects.map((e) {
        sum += int.parse(e['count'].toString()) *
            int.parse(items
                .firstWhere((element) => element['id'] == e['item_id'])['price']
                .toString());
      }); */

      userSelects.fold(
          sum,
          (previousValue, e) => sum += int.parse(e['count'].toString()) *
              int.parse(items
                  .firstWhere(
                      (element) => element['id'] == e['item_id'])['price']
                  .toString()));
      print(sum);
      print("Sum of your Order: $sum");
      break;
    }
    int userSelectedItemID = us;
    print('Enter Count of Item:');
    userSelect = stdin.readLineSync()!;
    us = int.tryParse(userSelect);

    while (us == null) {
      print('input not Currect!!\nPlease Try Again:');
      userSelect = stdin.readLineSync()!;
      us = int.tryParse(userSelect);
    }
    int userSelectedItemCount = us;
    userSelects
        .add({"item_id": userSelectedItemID, "count": userSelectedItemCount});
  }

  /*  items.sort((a, b) => a['id'].toString().compareTo(b['id'].toString()));
  print(items); */

  print('Good');
}
