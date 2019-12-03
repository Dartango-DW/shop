import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/src/providers/cart.dart';
import 'package:shop/src/providers/orders.dart';
import 'package:shop/src/providers/products.dart';
import 'package:shop/src/ui/error/error_screen.dart';
import 'package:shop/src/ui/screens/cart_screen.dart';
import 'package:shop/src/ui/screens/orders_screen.dart';
import 'package:shop/src/ui/screens/product_detail_screen.dart';
import 'package:shop/src/ui/screens/products_overview_screen.dart';

class ShopApp extends StatefulWidget {
  @override
  _ShopAppState createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }

  Widget _buildErrorScreen(BuildContext context, Exception exception) {
    return ErrorScreen(
      exception: exception,
      onRetry: () {
        // _categoryBloc.dispatch(FetchCategoriesEvent());
      },
    );
  }
}
