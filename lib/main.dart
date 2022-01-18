import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool switc = false;
  ThemeData dark=ThemeData(brightness: Brightness.dark);
  ThemeData light=ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: switc ? dark:light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day and Night'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image(image: NetworkImage('https://media.istockphoto.com/vectors/day-and-night-summer-beach-vector-id971986922?k=20&m=971986922&s=612x612&w=0&h=rI6nlHRvkTCPEVch6DgnDrfFON51bT8U5G_YqFLxgi4='),),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny,color: Colors.orangeAccent,size: 35,),
                  SizedBox(width: 15),
                  Text('Light',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo, fontWeight: FontWeight.bold, letterSpacing: 5,
                    ),),
                  SizedBox(width: 20),
                  Switch(value: switc, onChanged: (_newvalue){
                    setState(() {
                      switc = _newvalue;
                    });
                  }),
                  SizedBox(width: 20),
                  Text('Dark',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo, fontWeight: FontWeight.bold, letterSpacing: 5,
                    ),),
                  SizedBox(width: 15),
                  Icon(Icons.nights_stay,color: Color(0xff313a59), size: 30,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
