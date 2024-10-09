import 'package:get/get.dart';

class Item {
  static int _lastID = 0;
  RxInt cost;
  RxString name;
  int itemId;
  Item({
    required this.cost,
    required this.name,
  }) : itemId = ++_lastID;
}
