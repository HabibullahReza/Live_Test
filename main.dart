void main() {
     // Create a Dart list named fruits with at least three fruits, represented as maps.
     List<Map<String, dynamic>> fruits = [
          {"name": "Apple", "color": "Red", "price": 2.5},
          {"name": "Banana", "color": "Yellow", "price": 1.0},
          {"name": "Grapes", "color": "Purple", "price": 3.0},
     ];

     // Write a function displayFruitDetails that takes the fruits list as a parameter and prints out the details of each fruit.
     displayFruitDetails(fruits);

     // Implement a function applyPriceDiscount() that takes the fruits list and a discount percentage as parameters.
     // This function should update the price of each fruit by applying the discount.
     applyPriceDiscount(fruits, 10);

     // Display the updated fruit details after applying the discount.
     print("\nFruit Details After Applying 10% Discount:\n");
     displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
     // Function to display the details of each fruit.
     print("Original Fruit Details before Discount:\n");
     for (var fruit in fruits) {
          print(
              "Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"]}");
     }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
     // Function to apply a discount to the price of each fruit.
     for (var fruit in fruits) {
          double originalPrice = fruit["price"];
          double discountedPrice = originalPrice - (originalPrice * discountPercentage / 100);
          fruit["price"] = discountedPrice;
     }
}
