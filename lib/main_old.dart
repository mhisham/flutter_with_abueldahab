import 'package:flutter/material.dart';

void main(){
  runApp(new application2());//run app
}


class application2 extends StatefulWidget {
  @override
  _fulAppState createState() => _fulAppState();
}

class _fulAppState extends State<application2> {
  int num = 0;
  String btnText = "The Btn val : 0";

  List<int> items = new List();

  @override
  void initState() {
    // TODO: implement initState
    for(int i = 0; i < 10000; i++){
      items.add(i);
    }
    super.initState();
  }

  void myfunc(){
      setState(() {
        num++;
        btnText = "now btn val : " + num.toString();
      });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Statful Widget",
      home: new Scaffold(
          appBar: new AppBar(title: new Text("Joiners"),backgroundColor: Colors.deepPurpleAccent,),
          body: new Container(
            color: Colors.deepPurpleAccent,
            child: new Container(
              color: Colors.yellow,
              margin: const EdgeInsets.all(40.0),
              child: new ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index){
                    return new ListTile(
                      title: new Text("Item no : $index"),
                      trailing: Icon(Icons.arrow_forward),
                    );
                },
              ),
              ),
            ),
//            transform: new Matrix4.rotationZ(0.01)
          )
      );
  }
}


class application1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      title: "Stateless Widget",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Joiners"),backgroundColor: Colors.deepPurpleAccent,),
        body: new Container(
            color: Colors.deepPurpleAccent,
            child: new Container(
              color: Colors.yellow,
              margin: const EdgeInsets.all(40.0),
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text("Item 1"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  new ListTile(
                    title: new Text("Item 2"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  new ListTile(
                    title: new Text("Item 3"),
                    trailing: Icon(Icons.arrow_forward),
                  )
                ],
              ),
          ),
//            transform: new Matrix4.rotationZ(0.01)
      )
      )
    );
  }
}

