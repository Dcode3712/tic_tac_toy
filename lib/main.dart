import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  int cnt = 0;
  String p1 = "X";
  String p2 = "O";
  String msg = "Game Is Running....";

  List<String> l = List.filled(9,"");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOY"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [abc(0), abc(1), abc(2)],
              )),
          Expanded(
              flex: 3,
              child: Row(
                children: [abc(3), abc(4), abc(5)],
              )),
          Expanded(
              flex: 3,
              child: Row(
                children: [abc(6), abc(7), abc(8)],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [

                  Expanded(
                      child: InkWell(
                        onTap: () {
                          l[0] = "";
                          l[1] = "";
                          l[2] = "";
                          l[3] = "";
                          l[4] = "";
                          l[5] = "";
                          l[6] = "";
                          l[7] = "";
                          l[8] = "";
                          msg = "game is Running....";

                          setState(() {});
                        },
                        child: Text(
                          "Restart",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 50,
                          ),
                        ),
                      )),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [


                  Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                          Container(
                              margin: EdgeInsets.all(70),
                              color: Colors.black,
                              alignment: Alignment.center,
                              height: 100,
                              width: 120);
                        },
                        child: Text(
                          msg,
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 50,
                          ),
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }

  Widget abc(int i) {
    return Expanded(
        child: InkWell(
          onTap: () {
            {
              if (l[i] == "") {
                if (cnt % 2 == 0) {
                  l[i] = p1;
                } else {
                  l[i] = p2;
                }
              }
              cnt++;
              setState(() {});
              win();
            }
          },
          child: Container(
            margin: EdgeInsets.all(10),
            height: double.infinity,
            alignment: Alignment.center,
            color: Colors.black,
            child: Text(
              l[i],
              style: TextStyle(fontSize: 150, color: Colors.deepPurple),
            ),
          ),
        ));
  }

  win() {
    if (l[0] == l[1] && l[0] == l[2] && l[0] != "") {
      if (l[0] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[3] == l[4] && l[3] == l[5] && l[3] != "") {
      if (l[3] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[6] == l[7] && l[6] == l[8] && l[6] != "") {
      if (l[6] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[0] == l[3] && l[0] == l[6] && l[0] != "") {
      if (l[0] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[1] == l[4] && l[1] == l[7] && l[1] != "") {
      if (l[1] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[2] == l[5] && l[2] == l[8] && l[2] != "") {
      if (l[2] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[0] == l[4] && l[0] == l[8] && l[0] != "") {
      if (l[0] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }
    if (l[2] == l[4] && l[2] == l[6] && l[2] != "") {
      if (l[2] == p1) {
        msg = "$p1 is Winner....";
      } else {
        msg = "$p2 is Winner....";
      }
    }

    if(msg!="$p1 is Winner" && msg!="$p2 is Winner" && cnt==9)
      {
          msg= "Draww";
      }
  }
}
