import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/constans/text_strings.dart';
import 'package:kirazamat/src/features/authentication/models/cart_model.dart';
import 'package:kirazamat/src/features/authentication/screens/cardScreen/kilem/widget/circle.dart';
import 'package:provider/provider.dart';
import '../../shoppingCart/cart_screen.dart';
import '../../widget/appbar/appbar_widgets.dart';
import '../../widget/navbar/navbar.dart';
class KilemScreen extends StatefulWidget {
  final double? height, width;

  KilemScreen({super.key, this.height, this.width});

  @override
  _KilemScreenState createState() => _KilemScreenState();
}

class _KilemScreenState extends State<KilemScreen> {
  int? selectedItemIndex; // Для элементов сетки
  List<bool> isSelected = [true, false]; // Toggle button state

  // State variables for carpet dimensions
  double carpetHeight = 0.0;
  double carpetWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppBarWidget(),
            KilemCircle(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  tKilemTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            // Toggle buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ToggleButtons(
                isSelected: isSelected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                },
                borderRadius: BorderRadius.circular(12),
                selectedBorderColor: tButtonFocusColor,
                selectedColor: tWhiteColor,
                fillColor: tButtonFocusColor,
                color: tButtonColor,
                constraints: BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 100.0,
                ),
                children: [
                  Text("Стандартный"),
                  Text("Овальный"),
                ],
              ),
            ),
            // Input fields for carpet dimensions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Высота ковра (м)',
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          carpetHeight = double.tryParse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Ширина ковра (м)',
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          carpetWidth = double.tryParse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final cartModel = Provider.of<CartModel>(context, listen: false);
                if (selectedItemIndex != null) {
                  cartModel.addItemToCart(selectedItemIndex!, isSelected[0] ? "Стандартный" : "Овальный");
                  selectedItemIndex = null; // Очистить выбор после добавления в корзину
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: tShoppingButtonColor,
              ),
              child: SizedBox(
                height: 40,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tShopping,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 24,
                    )
                  ],
                ),
              ),
            ),
            // Toggle Widget
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 170 / 80,
                    ),
                    itemBuilder: (context, index) {
                      return ItemCard(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        itemPath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        isSelected: selectedItemIndex == index,
                        onPressed: () {
                          setState(() {
                            selectedItemIndex = selectedItemIndex == index ? null : index;
                          });
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final color;
  final bool isSelected;
  final void Function()? onPressed;

  ItemCard({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemPath,
    required this.color,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? tButtonFocusColor : tButtonColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(itemName, style: Theme.of(context).textTheme.labelMedium),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: tWhiteColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          child: Text(
                            itemPrice + "тг/м²",
                            style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 8),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  itemPath,
                  color: tWhiteColor,
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
