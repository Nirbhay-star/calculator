import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Statefull',
      theme: ThemeData(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 208, 214, 247),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo),
      ),
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Basic Calculation")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            var sum = no1 + no2;
                            result = 'The sum 0f $no1 and $no2 is $sum';
                            setState(() {});
                      }, child: Text('add')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            var sum = no1 - no2;
                            result = 'The diffrence 0f $no1 and $no2 is $sum';
                            setState(() {});
                      }, child: Text('sub')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            var sum = no1 * no2;
                            result = 'The product 0f $no1 and $no2 is $sum';
                            setState(() {});
                      }, child: Text('mult')),
                      ElevatedButton(onPressed: () {
                        var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());
                            var sum = no1 / no2;
                            result = 'The division 0f $no1 and $no2 is $sum';
                            setState(() {});
                      }, child: Text('div')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(21),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
