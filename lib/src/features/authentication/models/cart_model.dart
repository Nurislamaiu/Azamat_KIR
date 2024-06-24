
import 'package:flutter/cupertino.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/constans/image_strings.dart';
import 'package:kirazamat/src/constans/text_strings.dart';

class CartModel extends ChangeNotifier{

  final List _shopItems = [
    // [itemName, itemPrice, itemPath]
    [tKilemCardTitle1, tKilemCardPrice1, tKilemCardImage1, tButtonColor],
    [tKilemCardTitle2, tKilemCardPrice2, tKilemCardImage2, tButtonColor],
    [tKilemCardTitle3, tKilemCardPrice3, tKilemCardImage3, tButtonColor],
    [tKilemCardTitle4, tKilemCardPrice4, tKilemCardImage4, tButtonColor],
    [tKilemCardTitle5, tKilemCardPrice5, tKilemCardImage5, tButtonColor],
    [tKilemCardTitle6, tKilemCardPrice6, tKilemCardImage6, tButtonColor],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index, String shape) {
    _cartItems.add([..._shopItems[index], shape]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for(int i=0; i<_cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}