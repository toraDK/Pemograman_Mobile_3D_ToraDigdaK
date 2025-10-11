import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_pages.dart';
import 'pages/items_pages.dart';
import 'models/item.dart';

void main() {
  runApp(const BelanjaApp());
}

class BelanjaApp extends StatelessWidget {
  const BelanjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/item',
          builder: (context, state) {
            final item = state.extra as Item;
            return ItemPage(item: item);
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Aplikasi Belanja - Tora Digda Kristiawan',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
