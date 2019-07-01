import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Shopping App',
  home: ShoppingList(
    products: <Product>[
      Product(name: 'Eggs'),
      Product(name: 'Flour'),
      Product(name: 'Chocolate Chips'),
      Product(name: 'Chocolate'),
      Product(name: 'Chips')
    ],
  ),
));

class Product {
  const Product({this.name});

  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

// Statless Class Shopping List Item
class ShoppingListItem extends StatelessWidget{
  ShoppingListItem({
    Product product,
    this.inCart,
    this.onCartChanged
  }) : 
  product = product, 
  super(key:ObjectKey(product));

  final Product product;
  final bool inCart;
  // Defing Function
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context){
    // The theme depends on the BuildContext because different parts of the tree
    // can have different themes.  The BuildContext indicates where the build is
    // taking place and therefore which theme to use.
    // If inCart True Then Its Color would be black else it would be primary color maybe blue
    return inCart ? Colors.black87 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if (!inCart) return null;

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: (){
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }

}

class ShoppingList extends StatefulWidget{
  ShoppingList({Key key, this.products}) :super(key:key);

  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList>{
  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool inCart){
      setState(() {
        print('datas $product');
        if(!inCart){
          _shoppingCart.add(product);
        }else{
          _shoppingCart.remove(product);
        }
      });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List App'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
          return ShoppingListItem(
             product: product,
             inCart: _shoppingCart.contains(product),
             onCartChanged: _handleCartChanged,
          );
        }).toList()
      ),
    );
  }
}