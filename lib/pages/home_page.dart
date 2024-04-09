import 'package:fintech_app/functional_widgets/extensions/extensions.dart';
import 'package:fintech_app/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/value_widget/value_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(children: [
          const NewsWidget().paddingHorizontal(20),
          const Center(
              child: Text(
            'COIN PRICES',
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w400,
                fontSize: 25),
          )).paddingOnly(top: 30),
          const Expanded(child: ValueWidget()),
        ]),
      ),
    );
  }
}
