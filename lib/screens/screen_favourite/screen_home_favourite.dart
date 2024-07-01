import 'package:flutter/material.dart';

class ScreenFavourite extends StatefulWidget {
  const ScreenFavourite({super.key});

  @override
  State<ScreenFavourite> createState() => _ScreenFavouriteState();
}

class _ScreenFavouriteState extends State<ScreenFavourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
      ),
    );
  }
}
