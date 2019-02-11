import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom form")
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/Caterpie.png",
              height: 100,
            ),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),

              obscureText: true,

              keyboardType: TextInputType.emailAddress,

              validator:  (value){
                if(value.isEmpty){
                  return "Please input value";
                }
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),

              obscureText: true,

              keyboardType: TextInputType.emailAddress,

              validator:  (value){
                if(value.isEmpty){
                  return "Please input value";
                }
              }
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: (){
                _formKey.currentState.validate();
              },
            )
          ],
        ),
      ),
    );
  }
}