import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/models/cart.dart';
import 'package:provider_course/models/product_list.dart';
import 'package:provider_course/utils/app_routes.dart';
import 'package:provider_course/views/products/counter_page.dart';
import 'package:provider_course/views/products/product_detail_page.dart';
//import 'package:provider_course/views/products/product_detail_page.dart';
import 'package:provider_course/views/products/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.productDetail: (context) => const ProductDetailPage()
        },
        home: const ProductsOverviewPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductsOverviewPage(),
    );
  }
}
