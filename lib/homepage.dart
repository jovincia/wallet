import 'package:wallet/Calculator.dart';
import 'main.dart';
import 'package:wallet/SignUp.dart';
import 'package:wallet/Home.dart';
import 'package:flutter/material.dart';


List<String> places = [
  "Nuwakot",
  "Dhaulagiri",
  "Rara",
  "Muktinath",
  "Pashupatinath"
];

class homepage extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim5.dart";
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> items;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    items = ["Kathmandu", "Bhaktapur", "Pokhara", "Mount Everest"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: AnimatedList(
        key: _listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, anim) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                .animate(anim),
            child: BorderedContainer(
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8.0,
              ),
              padding: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _listKey.currentState.removeItem(index,
                        (context, animation) {
                      String removedItem = items.removeAt(index);
                      return SizeTransition(
                        sizeFactor: animation,
                        axis: Axis.vertical,
                        child: BorderedContainer(
                              margin: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 8.0,
                              ),
                              padding: const EdgeInsets.all(0),
                              child: ListTile(
                                title: Text(removedItem),
                              )),
                        );
                      });
            setState(() {});
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    floatingActionButton: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder:(_)=> Calculator())
                        );
                        /*places.shuffle();
                        items.insert(items.length, places[0]);
                        _listKey.currentState.insertItem(items.length - 1);
                        setState(() {});*/
                      },
                    ),
                  );
                }
              }
              
              BorderedContainer({EdgeInsets margin, EdgeInsets padding, ListTile child}) {
}