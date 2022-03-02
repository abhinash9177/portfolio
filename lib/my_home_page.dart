import 'package:flutter/material.dart';
import 'package:portfolio/const/const.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = widgetList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.black,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  'portfolio',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal, child: myTabRow()),
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: Center(
                        child: _widgetOptions.elementAt(_selectedIndex))),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  SizedBox myTabRow() {
    return SizedBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _roudContainer(name: 'About', myIndex: 0),
        const SizedBox(width: 20),
        _roudContainer(name: 'Study', myIndex: 1),
        const SizedBox(width: 20),
        _roudContainer(name: 'Work', myIndex: 2),
        const SizedBox(width: 20),
        _roudContainer(name: 'Experience', myIndex: 3),
      ],
    ));
  }

  GestureDetector _roudContainer({
    required String name,
    required int myIndex,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = myIndex;
        });
      },
      child: Container(
          decoration: BoxDecoration(
            color: _selectedIndex == myIndex ? Colors.black : Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
            child: Text(
              name,
              style: TextStyle(
                  color:
                      _selectedIndex == myIndex ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

//Personal study Work Experience

}
