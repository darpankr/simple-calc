import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int num1,num2,sum=0;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doaddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void dosub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void domulti(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void dodiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doclear(){
    setState(() {
      t1.text= '0';
      t2.text= '0';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATOR'),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text("Enter the numbers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.teal)),
                Spacer(),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter number one'
                  ),
                  controller: t1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Enter number two'
                  ),
                  controller: t2,
                ),
                Spacer(),
                Text('OUTPUT : $sum',
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: const Text('Add'),
                      color: Colors.blue,
                      onPressed: doaddition,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                      child: const Text('Sub'),
                      color: Colors.green,
                      onPressed: dosub,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: const Text('Mult'),
                      color: Colors.deepPurple,
                      onPressed: domulti,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    RaisedButton(
                      child: const Text('Div'),
                      color: Colors.deepOrange,
                      onPressed: dodiv,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: const Text('Clear'),
                      color: Colors.blueGrey,
                      onPressed: doclear,
                    )
                  ],
                ),
                Spacer(),
                Text('darpan@creation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.purple),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
