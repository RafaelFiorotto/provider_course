import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/components/app_drawer.dart';
import 'package:provider_course/components/order_widget.dart';
import 'package:provider_course/models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Pedidos'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) => OrderWidget(
          order: orders.items[index],
        ),
      ),
    );
  }
}
