
import 'food_item.dart';

class FoodCategory{
  String name;
  List<FoodItem> items;
  FoodCategory({
    required this.name,
    required this.items,
  });

  // add food item to the specific food category
  void addItem(FoodItem item){
    items.add(item);
  }
  // remove food item to the specific food category
  void removeItem(FoodItem item){
    items.remove(item);
  }

}