import 'package:fintech_app/pages/favorites.dart';
import 'package:fintech_app/pages/home_page.dart';
import 'package:fintech_app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    routes: [
  GoRoute(
    path: '/',
    name: 'MainPage',
    builder: (context, state) => const MainPage(),
    routes: [
      GoRoute(
        path: 'homePage',
        pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
        // builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: 'favorites',
        pageBuilder: (context, state) => const MaterialPage(child: Favorites()),
        // builder: (context, state) => const Favorites(),
      ),
    ],
  ),

]);
