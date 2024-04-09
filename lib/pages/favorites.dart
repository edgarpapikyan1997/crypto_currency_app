import 'package:fintech_app/store/value/value_widget.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({
    super.key,
  });

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  final valueWidget = ValueWidget();
  var finalSum;

  Future<int> sumStream(Stream<int> stream) async {
    var sum = 0;

    stream.listen((event) {
      sum += event;
    });
    return sum;
  }

  Stream<int> countStream(int to) async* {
    var sum = 0;
    for (int i = 1; i <= to; i++) {
      print(i);
      await Future.delayed(const Duration(milliseconds: 1000));
      sum += i;
      if(i == 4){
        throw Exception('Unavailable count');
      }
      else {
        yield i;
      }
    }
    print(sum);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      // finalSum = countStream(10).listen((event) {
                      //   print(event);
                      // });
                      countStream(5).lastWhere((element) {
                        return element >= 4;
                      });
                    },
                    child: const Text('Press'))),
          ],
        ),
      ),
    ));
  }
}
