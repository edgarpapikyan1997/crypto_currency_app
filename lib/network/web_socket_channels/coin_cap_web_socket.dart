import 'dart:async';
import 'package:web_socket_channel/web_socket_channel.dart';

// final channel = WebSocketChannel.connect(
//   Uri.parse(
//       'wss://ws.coincap.io/prices?assets=bitcoin,ethereum,solana,xrp,cardano,avalanche,dogecoin,monero,litecoin'),
// );

class CoinCapStream extends Stream {

  @override
  StreamSubscription listen(void Function(dynamic event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    // TODO: implement listen
    throw UnimplementedError();
  }
}

// class CoinCapStreamSingleton {
//   static final CoinCapStreamSingleton _instance = CoinCapStreamSingleton._internal();
//   factory CoinCapStreamSingleton() => _instance;
//
//   CoinCapStreamSingleton._internal();
//
//   final _coinCapStreamController = StreamController.broadcast();
//   Stream get coinCapStream => _coinCapStreamController.stream;
//
//   void addStream(WebSocketChannel channel) {
//     _coinCapStreamController.addStream(channel.stream);
//   }
//
//   void dispose() {
//     _coinCapStreamController.close();
//   }
// }
