import 'package:flutter/material.dart';

import '../utils.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  var _formKey = GlobalKey<FormState>();

  onSubmit(){
    if(_formKey.currentState.validate()){
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Inscription Reussite")));
    }
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final contactCtrl = TextEditingController();
    final passCtrl = TextEditingController();
    final nomCtrl = TextEditingController();
    final prenomCtrl = TextEditingController();
    var typeUser = 1;

    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Card(
                elevation: 10,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    height: size.height + size.height / 9,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "INSCRIPTION",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                fontFamily: "consolas",
                                fontStyle: FontStyle.italic
                            ),
                          ),
                          SizedBox(height: 10,),
                          createTF(ctrl: nomCtrl,  hintText: "Entrez votre nom"),
                          createTF(ctrl: prenomCtrl, hintText: "Entrez votre prénom"),
                          createTF(ctrl: contactCtrl, icon: Icons.phone, hintText: "Entrez votre contact", textType: TextInputType.phone),
                          createTF(ctrl: passCtrl, icon: Icons.lock_outline, hintText: "Entrez votre mot de passe", obscure: true),
                          Row(
                            children: <Widget>[
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Radio(
                                    value: 1,
                                    groupValue: typeUser,
                                    activeColor: Colors.orange,
                                    onChanged: (int value){
                                      setState(() {
                                        typeUser = value;
                                      });
                                    },
                                  ),
                                  Text('Propriétaire')
                                ],
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: <Widget>[
                                  Radio(
                                    value: 2,
                                    groupValue: typeUser,
                                    activeColor: Colors.orange,
                                    onChanged: (int val){
                                      setState(() {
                                        typeUser = val;
                                      });
                                    },
                                  ),
                                  Text('Prospecteur')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              RaisedButton(
                                child: Text("Valider"),
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                                color: Colors.orange,
                                textColor: Colors.white,
                                onPressed: onSubmit,
                              ),
                              RaisedButton(
                                child: Text("Se connecter"),
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                                color: Colors.white,
                                textColor: Colors.orange,
                                onPressed: () =>{
                                  Navigator.popAndPushNamed(context, 'login')
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
    );
  }
}
