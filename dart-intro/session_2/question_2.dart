// Given a map of inventory items and their quantities:
//    Map<String, int> inventory = {'apples': 5, 'bananas': 10};
// Write a function that increases the quantity of a specified
// item by a given number. If the item is not already in the inventory,
// it should be added with the specified quantity.

void main() {
  print(
    ItemAndQuantity('bananas', 100),
  );
}

String ItemAndQuantity(String item, int quantity) {
  Map<String, int> inventory = {
    'apples': 5,
    'bananas': 10,
  };
  if (inventory.containsKey(item)) {
    print(inventory[item]! + quantity);
  } else {
    inventory[item] = quantity;
    print(quantity);
  }

  return '';
}
