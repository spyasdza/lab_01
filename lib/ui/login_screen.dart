import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String user_id, user_pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login")
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Image.asset(
              "resources/Caterpie.png",
              height: 100,
            ),

            TextFormField(
              decoration: InputDecoration(
                labelText: "ID",
                hintText: "User Id",
                icon: Icon(Icons.person),
              ),

              keyboardType: TextInputType.emailAddress,

              validator:  (id){
                if(id.isEmpty){
                  return "_showDialog()";
                }
                else{
                  user_id = id;
                }
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
                icon: Icon(Icons.security),
              ),

              obscureText: true,

              keyboardType: TextInputType.emailAddress,

              validator:  (pass){
                if(pass.isEmpty){
                  return "_showDialog";
                }
                else{
                  user_pass = pass;
                }
              }
            ),

            RaisedButton(
              child: Text("Login"),
              onPressed: (){
                _formKey.currentState.validate();
                if(user_id == 'admin' && user_pass == 'admin'){
                  Navigator.pushNamed(context, "/second");
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}