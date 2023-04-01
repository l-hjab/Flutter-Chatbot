import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexas Bot',
      theme: ThemeData(
        // This is the theme of your application.
      
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Nexas Chatbot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // int _counter = 0;
    TextEditingController _question= TextEditingController();
    String reply="";
    String question ="";
    List<String>arrques=[];
    List<String>arrrep=[];
    bool show=false;
  //void _incrementCounter() {
   // setState(() {
      // This call to setState tells the Flutter framework that something has
      
   //   _counter++;
   // });
  //}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children:[
            show?Padding(
              padding: const EdgeInsets.only(bottom:70.0),
              child:ListView(
                children: arrques.map((ques){
                  return Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      show?Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Card(
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                  ),
                                  color: Theme.of(context).scaffoldBackgroundColor
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(ques,textAlign: TextAlign.right,),
                                ),),
                             ),
                          )
                        ],
                      ):Container(),
                      show?Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: arrrep[arrques.indexOf(ques)]=="How are you?"?MediaQuery.of(context).size.width/2:null,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                  ),
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(arrrep[arrques.indexOf(ques)],textAlign: TextAlign.left ,),

                                )),
                            ),

                          )
                        ],
                      ):Container(),]),
                  );
                }).toList()
              ),
            ):Container(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0 ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)
                    ),
                    color: Colors.white
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child:TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _question,
                      maxLength: 100,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: "Ask a question",
                        suffixIcon: GestureDetector(//for(int i=0;i<=counter=1,i++))
                        onTap:(){
                          if(_question.text
                          .trim()
                          .isEmpty
                          ){
                            
                          }
                          else{
                            setState(() {
                              question=_question.text.trim().toLowerCase();
                              show=true;
                              _question.text="";
                              if(question=="hello"){
                                reply="hey,niaje?";
                              }else if(question=="hey"){
                                reply="Hey,waambaje";
                              }else if(question=="uko aje"){
                                reply = "Niko fiti,hope umeshinda poa";
                              }else if(question=="mambo"){
                                 reply = "poa sana";
                              }else if(question=="sasa"){
                                  reply = "Poa ,niambie";
                              }else if(question=="niaje"){
                                  reply = "fitty mkuu, nitolee form";
                              }else if(question=="mkuu!"){
                                  reply = "vipi form ya leo?";
                              }else if(question=="oyaaah"){
                                  reply ="rada";
                              }else if(question=='self love n nn'){
                                reply="Ntaexplain to english,juu menh kiswahili ni ngori";
                                reply="Self love means that you accept yourself fully and have a positive regard for yourself";
                              }else if(question=="example ya self love ni kaa gani"){
                                reply="Example of self love is paying attention to one's own happiness and well-being";
                              }else if(question=="ways za kulearn self love ni kaa gani"){
                                reply="The first way is:Become your hero for the day,Admit your flaws and take action and be honest to yourself";
                              }else if(question=="thanks mkuu"){
                                reply="No worries,karibu tena";
                              }else if(question=="morning"){
                                reply="Morning to you too,hope umeamka poa";
                              }else if(question=="afternoon"){
                                reply="afternoon to you too,umeshinda aje";
                              } else if(question=="si tuonane mabadae"){
                                reply="sawa,Shinda poa mkuu";
                              }else if(question=="can i know you"){
                                reply="hey,I'm Nexas Bot developed by Daphine,ask anything about self love";
                              }
                              else{
                                reply="I don't Understand what you are saying";
                              }
                              arrques.add(question);
                              arrrep.add(reply);
                            });
                          }
                        },
                        child: Icon(Icons.send)),
                    ),
                  ),

                  ),
                ),

              ),
            )

                    ]          
          
          
        ),
      ),
      
      
    );
  }
}
