import 'dart:async';
import 'dart:convert';
import 'package:fintech_app/functional_widgets/extensions/extensions.dart';
import 'package:fintech_app/models/coin_price_model.dart';
import 'package:fintech_app/network/web_socket_channels/coin_cap_web_socket.dart';
import 'package:fintech_app/widgets/token_widget.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ValueWidget extends StatefulWidget {
  const ValueWidget({super.key});

  @override
  State<ValueWidget> createState() => _ValueWidgetState();
}

class _ValueWidgetState extends State<ValueWidget> {
  final CoinPricesModel _coinPricesModel = CoinPricesModel();
  final channel = WebSocketChannel.connect(
    Uri.parse(
        'wss://ws.coincap.io/prices?assets=bitcoin,ethereum,solana,xrp,cardano,avalanche,dogecoin,monero,litecoin'),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    channel.sink.close();
    // print(channel.stream.isEmpty);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: channel.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          try {
            Map<String, dynamic> data = json.decode(snapshot.data as String);
            _coinPricesModel.updatePrices(data);
          } catch (e) {
            print("Error decoding JSON: $e");
          }
        }
        return Container(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: _coinPricesModel.coins.map((coin) {
                    return TokenWidget(coin: coin);
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
