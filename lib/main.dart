import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:ui';
import 'model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List<dynamic> data;
  // int index=0;

 Future<List<Country>> _loadDataToTravelList() async {
    String jsonString = await rootBundle.loadString('assets/city.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => Country.fromJson(v)).toList();
  }


  Future<List<dynamic>> _loadData() async {
    String jsonString = await rootBundle.loadString('assets/city.json');
    return json.decode(jsonString).toList();
  }

 @override
  void initState() {
    super.initState();
    _loadData().then((value) {
      setState(() {
        data = value;
      });
    });
    print("*********************************************");
    _loadDataToTravelList().then((value) => print("**********************************************" + value[0].name));
  }


void deneme(){
print(data.length);


for(int index=0;index<data.length;index++){

  print("${data[index].characters.toString()}");

}


}




  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      
      ),
      body: Center(
        
        child:Text("dtdfgfgg")
      ),

    );
  }
}
