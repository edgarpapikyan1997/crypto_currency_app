import 'package:fintech_app/functional_widgets/extensions/extensions.dart';
import 'package:fintech_app/models/coin_model.dart';
import 'package:flutter/material.dart';

class TokenWidget extends StatelessWidget {
  final CoinModel coin;
  const TokenWidget({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.blueGrey.shade400,
              spreadRadius: 0.5,
              offset: const Offset(0, 3),
              blurRadius: 4,
              blurStyle: BlurStyle.outer),
        ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueGrey.withOpacity(0.5),
      ),
      width: context.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            coin.name,
            style: const TextStyle(
                color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w500),
          ).paddingHorizontal(15),
          Text(
            'Price: ${coin.price}',
            style: const TextStyle(
                color: Colors.white60,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ).paddingHorizontal(15),
        ],
      ),
    ).paddingOnly(top: 15, left: 10, right: 10);
  }
}
