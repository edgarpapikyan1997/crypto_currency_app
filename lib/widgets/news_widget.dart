import 'package:fintech_app/functional_widgets/extensions/extensions.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.blueGrey.shade300,
              spreadRadius: 0.5,
              offset: const Offset(0, 3),
              blurRadius: 15,
              blurStyle: BlurStyle.outer),
        ],
      ),
      width: context.width,
      height: 180,
    );
  }
}
