import 'package:demarcho/utils.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _formKey = GlobalKey<FormState>();

  onSubmit(){
    if(_formKey.currentState.validate()){
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Login"),));
    }
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var contactCtrl = TextEditingController();
    var passCtrl = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: size.height / 1.50,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "CONNEXION",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            fontFamily: "consolas",
                            fontStyle: FontStyle.italic
                          ),
                        ),
                        SizedBox(height: 10,),
                        createTF(ctrl: contactCtrl, icon: Icons.phone, hintText: "Entrez votre contact", textType: TextInputType.phone),
                        createTF(ctrl: passCtrl, icon: Icons.lock_outline, hintText: "Entrez votre mot de passe", obscure: true),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Mot de passe oublié ?", style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RaisedButton(
                              child: Text("Se connecter"),
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                              color: Colors.orange,
                              textColor: Colors.white,
                              onPressed: onSubmit,
                            ),
                            RaisedButton(
                              child: Text("S'inscrire"),
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                              color: Colors.white,
                              textColor: Colors.orange,
                              onPressed: () =>{
                                Navigator.popAndPushNamed(context, 'register')
                              },
                            ),

                          ],
                        )
                      ],
                    ),
                  )
                  ),
                )
            ]
          ),
        ),
      ),
    );
  }
}
