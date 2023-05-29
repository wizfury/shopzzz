import 'package:flutter/material.dart';
import 'package:my_shop/providers/products.dart';
import 'package:my_shop/screens/product_detail_Screen.dart';

import 'package:my_shop/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: 'Lato'
        ),
        
        initialRoute: '/',
        routes: {
          '/': (context) => ProductOverviewScreen(),
          ProductDetailScreen.routeName:(context) => ProductDetailScreen(),
        },
      ),
    );
  }
}