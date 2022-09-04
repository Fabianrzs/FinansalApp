
import 'package:day14/pages/home/homePage.dart';
import 'package:day14/styles/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue[800],
                  Colors.deepPurple[800],
                  Colors.orange[800]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 200,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Finansal App", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Eres Nuevo?", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(60),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(1, Text("Ingresa tus Datos", style: TextStyle(color: Colors.grey[700], fontSize: 30),)),
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(
                                      96, 27, 225, 0.3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]), right: BorderSide(width: 15, color: Colors.white), left:  BorderSide(width: 15, color: Colors.white)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Correo Electronico",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]), right: BorderSide(width: 15, color: Colors.white), left:  BorderSide(width: 15, color: Colors.white)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Nombre de Usuario",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]), right: BorderSide(width: 15, color: Colors.white), left:  BorderSide(width: 15, color: Colors.white)),
                                ),
                                child: TextField(
                                  enableInteractiveSelection: false,
                                  obscureText: true,
                                  textCapitalization: TextCapitalization.characters,
                                  decoration: InputDecoration(
                                      hintText: "Contraseña",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]), right: BorderSide(width: 15, color: Colors.white), left:  BorderSide(width: 15, color: Colors.white)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Confirma tu Contraseña ",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(height: 50,),
                        FadeAnimation(1.6, TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple[900])
                          ),
                          child: Text("Registrarte", style:
                          TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute( builder: (context) => HomePage()));
                          },
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}