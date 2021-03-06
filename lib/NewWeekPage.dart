import 'package:flutter/material.dart';
import 'package:gym_split/first_Page.dart';
import 'main.dart';

class MyNewWeekPage extends StatefulWidget {
   MyNewWeekPage({Key? key, required this.value  }) : super(key: key);

  late String value;

  @override
  State<MyNewWeekPage> createState() => _MyNewWeekPageState(value);
}

class _MyNewWeekPageState extends State<MyNewWeekPage> {

  late String value;
  _MyNewWeekPageState(this.value);

  final List<String> entries = <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text('New Week'),
        automaticallyImplyLeading: false,
      ),
      */
      backgroundColor: const Color.fromRGBO(62, 62, 62, 1.0),
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const firstPage()),
                );
              },
              title: Container(
                height: 70,
                color: Colors.white,

                margin:  const EdgeInsets.only(top: 5, bottom: 5,left: 20, right: 20),
                child: Row(
                  children: [
                    /*CircleAvatar(
                      backgroundImage: NetworkImage('https://i.imgur.com/OrYPDzE.png'),
                    ),*/

                    Container(
                      margin:  const EdgeInsets.only(right: 20),
                      child: const Icon(
                        (Icons.calendar_today_outlined),
                        color: Colors.green,
                            size: 50,
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${entries[index]}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),

                        Text(
                          value,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),

                      ],
                    ),
                  ], // Children
                ),
              ),
            );


          }),

    );
  } // Widget

} // class