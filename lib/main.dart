import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String strExp = "", strResult = "0.0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: Text("CALCULATOR", style: TextStyle(color: Colors.grey.shade600),),
            backgroundColor: Colors.grey.shade200,
            elevation: 0.5,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              //expression
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 60, 10),
                    child: Text(
                      strExp == "" ? "0.0" : strExp,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ],
              ),

              //RESULT
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 20, 82),
                    child: Text(
                      strResult,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withAlpha(170),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 28, 82),
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent.withAlpha(30),
                      radius: 21,
                      child: IconButton(
                        icon: Icon(
                            Icons.close,
                            color: Colors.deepPurple,
                            size:25
                        ),
                        onPressed: (){
                          setState(() {
                            strExp="";
                            strResult="0";

                          });

                        },

                      ),
                    ),
                  )

                ],
              ),

              //keypad
              getKeypad()
            ],
          ),
        ));
  }

  getKeypad() {
    return Column(
      children: <Widget>[
        //first half of keypad
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //NUMBER PAD
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //first row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //7
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "7",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("7");
                        print("clicked 7");
                      },
                    ),

                    //8
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "8",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("8");
                        print("clicked 8");
                      },
                    ),

                    //9
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(
                          "9",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("9");
                        print("clicked 9");
                      },
                    ),
                  ],
                ),

                //second row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //4
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("4");
                        print("clicked 4");
                      },
                    ),

                    //5
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("5");
                        print("clicked 5");
                      },
                    ),

                    //6
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(
                          "6",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("6");
                        print("clicked 6");
                      },
                    ),
                  ],
                ),

                //Third row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //1
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("1");
                        print("clicked 1");
                      },
                    ),

                    //2
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("2");
                        print("clicked 2");
                      },
                    ),

                    //3
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      onTap: () {
                        updateExp("3");
                        print("clicked 3");
                      },
                    ),
                  ],
                )
              ],
            ),

            //OPERATOR PAD
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple.withAlpha(30),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              // color: Colors.purpleAccent.withAlpha(50),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Text(
                        "÷",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    onTap: () {
                      updateExp("/");
                      print("clicked %");
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Text(
                        "X",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    onTap: () {
                      updateExp("*");
                      print("clicked X");
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    onTap: () {
                      updateExp("-");
                      print("clicked -");
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    onTap: () {
                      updateExp("+");
                      print("clicked +");
                    },
                  ),
                ],
              ),
            )
          ],
        ),

        //second half
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //.
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              onTap: () {
                updateExp(".");
                print("clicked .");
              },
            ),

            //0
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              onTap: () {
                updateExp("0");
                print("clicked 0");
              },
            ),

            //delete
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.deepPurpleAccent,
                  size: 30,

                ),
                onPressed: () {
                  setState(() {
                    if (strExp!=null && strExp.length>0) strExp=strExp.substring(0,strExp.length-1);
                  });
                },
              ),
            ),

            // =
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                color: Colors.purple.shade400,
                child: Text(
                  "=",
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Parser p = new Parser();
                  ContextModel cm = new ContextModel();
                  Expression exp = p.parse(strExp);
                  setState(() {
                    strResult=exp.evaluate(EvaluationType.REAL , cm).toString();
                    print(strResult);
                  });

                },
              ),
            )
          ],
        ),
      ],
    );
  }

  updateExp(String strValue) {
    setState(() {
      strExp = strExp + strValue;
    });
  }
}
