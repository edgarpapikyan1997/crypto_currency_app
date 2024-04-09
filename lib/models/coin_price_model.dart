import 'coin_model.dart';

class CoinPricesModel {
  final List<CoinModel> coins = [
    CoinModel("Bitcoin", "0.0"),
    CoinModel("Ethereum", "0.0"),
    CoinModel("Solana", "0.0"),
    CoinModel("XRP", "0.0"),
    CoinModel("Cardano", "0.0"),
    CoinModel("Avalanche", "0.0"),
    CoinModel("Dogecoin", "0.0"),
    CoinModel("Monero", "0.0"),
    CoinModel("Litecoin", "0.0"),
  ];

  void updatePrices(Map<String, dynamic> data) {
    for (CoinModel coin in coins) {
      if (data.containsKey(coin.name.toLowerCase())) {
        coin.price = data[coin.name.toLowerCase()];
      }
    }
  }
}
