import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  int selected=0;
  Widget loadBody(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;

        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ) ,

        child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  loadBody("Normal Body", 1),
                  Padding(padding: EdgeInsets.all(6)),
                  loadBody("Aluminium Body", 2),
                ],
              ),Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  loadBody("Wood Body", 3),
                  Padding(padding: EdgeInsets.all(6)),
                  loadBody("Company Body", 4),
                ],
              ),Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  loadBody("Local Body", 5),
                ],
              ),
            ],));
  }
}
var regriUnit1;
class regriUnit extends StatefulWidget {
  const regriUnit({Key? key}) : super(key: key);

  @override
  State<regriUnit> createState() => _regriUnitState();
}

class _regriUnitState extends State<regriUnit> {
  int selected=0;
  Widget unit(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          regriUnit1=text;
        });
      },
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              unit("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              unit("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var tailGate1;
class tailGate extends StatefulWidget {
  const tailGate({Key? key}) : super(key: key);

  @override
  State<tailGate> createState() => _tailGateState();
}

class _tailGateState extends State<tailGate> {
  int selected=0;
  Widget tailgate(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tailGate1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
    decoration: BoxDecoration(
    border: Border.all(
    width: 0.5,
    ),
    borderRadius: BorderRadius.circular(5),
    ) ,
    child: Column(
      children: [
    Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Very Bad", 1),
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Bad", 2),
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Good", 3),
    ],
        ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Very Good", 4),
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Missing", 5),
        Padding(padding: EdgeInsets.all(6)),
        tailgate("Average", 6),

    ],
    ),
        Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        tailgate("NA", 7),

    ],
    )
    ],
    ),
    );
  }
}
var leftSidegt1;
class leftSide extends StatefulWidget {
  const leftSide({Key? key}) : super(key: key);

  @override
  State<leftSide> createState() => _leftSideState();
}

class _leftSideState extends State<leftSide> {
  int selected=0;
  Widget leftSide(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          leftSidegt1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              leftSide("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              leftSide("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}

var leftCondn1;
class leftCondn extends StatefulWidget {

  const leftCondn({Key? key}) : super(key: key);

  @override
  State<leftCondn> createState() => _leftCondnState();
}

class _leftCondnState extends State<leftCondn> {
  int selected=0;
  Widget leftC(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          leftCondn1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              leftC("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              leftC("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              leftC("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              leftC("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              leftC("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              leftC("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              leftC("NA", 7),

            ],
          )
        ],
      ),
    );
  }
}
var rightSidegt1;
class rightSide extends StatefulWidget {
  const rightSide({Key? key}) : super(key: key);

  @override
  State<rightSide> createState() => _rightSideState();
}

class _rightSideState extends State<rightSide> {
  int selected=0;
  Widget RightC(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          rightSidegt1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightC("Fixed", 1),
              Padding(padding: EdgeInsets.all(6)),
              RightC("Floating", 2),
            ],
          ),
        ],
      ),
    );
  }
}


var RightCondtn1;
class RightCondtn extends StatefulWidget {
  const RightCondtn({Key? key}) : super(key: key);

  @override
  State<RightCondtn> createState() => _RightCondtnState();
}

class _RightCondtnState extends State<RightCondtn> {
  int selected=0;
  Widget RightCnd(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          RightCondtn1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var loadBody1;
class loadBody extends StatefulWidget {
  const loadBody({Key? key}) : super(key: key);

  @override
  State<loadBody> createState() => _loadBodyState();
}

class _loadBodyState extends State<loadBody> {
  int selected=0;
  Widget RightCnd(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          loadBody1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var overAll1;
class overAll extends StatefulWidget {
  const overAll({Key? key}) : super(key: key);

  @override
  State<overAll> createState() => _overAllState();
}

class _overAllState extends State<overAll> {
  int selected=0;
  Widget allLoad(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          overAll1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              allLoad("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              allLoad("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}

var chassisCnd1;
class chassisCnd extends StatefulWidget {
  const chassisCnd({Key? key}) : super(key: key);

  @override
  State<chassisCnd> createState() => _chassisCndState();
}

class _chassisCndState extends State<chassisCnd> {
  int selected=0;
  Widget RightCnd(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          chassisCnd1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}

var Tyres1;
class Tyres extends StatefulWidget {
  const Tyres({Key? key}) : super(key: key);

  @override
  State<Tyres> createState() => _TyresState();
}

class _TyresState extends State<Tyres> {
  int selected=0;
  Widget Chassis(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          Tyres1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 1", 1),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 2", 2),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 3", 3),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 4", 4),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 5", 5),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 6", 6),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 7", 7),
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 8", 8),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis(" 9", 9),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("10", 10),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("11", 11),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("12", 12),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis("13", 13),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("14", 14),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("15", 15),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("16", 16),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis("17", 17),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("18", 18),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("19", 19),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("20", 20),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Chassis("21", 21),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("22", 22),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("15", 23),
              Padding(padding: EdgeInsets.all(6)),
              Chassis("16", 24),

            ],
          ),
        ],
      ),
    );
  }
}
var bumper1;
class bumper extends StatefulWidget {
  const bumper({Key? key}) : super(key: key);

  @override
  State<bumper> createState() => _bumperState();
}

class _bumperState extends State<bumper> {
  int selected=0;
  Widget RightCnd(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          bumper1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              RightCnd("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var lamps1;
class lamps extends StatefulWidget {
  const lamps({Key? key}) : super(key: key);

  @override
  State<lamps> createState() => _lampsState();
}

class _lampsState extends State<lamps> {
  int selected=0;
  Widget lamps(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          lamps1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              lamps("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              lamps("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              lamps("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              lamps("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              lamps("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              lamps("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              lamps("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var doorLeft1;
class doorLeft extends StatefulWidget {
  const doorLeft({Key? key}) : super(key: key);

  @override
  State<doorLeft> createState() => _doorLeftState();
}

class _doorLeftState extends State<doorLeft> {
  int selected=0;
  Widget doorLeft(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          doorLeft1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorLeft("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var doorRight1;
class doorRight extends StatefulWidget {
  const doorRight({Key? key}) : super(key: key);

  @override
  State<doorRight> createState() => _doorRightState();
}

class _doorRightState extends State<doorRight> {
  int selected=0;
  Widget doorRight(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          doorRight1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              doorRight("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              doorRight("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var dashboard1;
class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          dashboard1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var ads1;
class abs extends StatefulWidget {
  const abs({Key? key}) : super(key: key);

  @override
  State<abs> createState() => _absState();
}

class _absState extends State<abs> {
  int selected=0;
  Widget abs(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          ads1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              abs("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              abs("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}

var ac1;
class ac extends StatefulWidget {
  const ac({Key? key}) : super(key: key);

  @override
  State<ac> createState() => _acState();
}

class _acState extends State<ac> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          ac1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}

var seatConf1;
class seatConf extends StatefulWidget {
  const seatConf({Key? key}) : super(key: key);

  @override
  State<seatConf> createState() => _seatConfState();
}

class _seatConfState extends State<seatConf> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          seatConf1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Sleeper", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Seater", 2),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("semi-Sleeper", 3),
              Padding(padding: EdgeInsets.all(6)),
              ac("NA", 4),
            ],
          ),
        ],
      ),
    );
  }
}

class driverSeat extends StatefulWidget {
  const driverSeat({Key? key}) : super(key: key);

  @override
  State<driverSeat> createState() => _driverSeatState();
}

class _driverSeatState extends State<driverSeat> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;

        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Good", 2),
              Padding(padding: EdgeInsets.all(6)),
              ac("NA", 3),

            ],
          ),
        ],
      ),
    );
  }
}

class coDriver extends StatefulWidget {
  const coDriver({Key? key}) : super(key: key);

  @override
  State<coDriver> createState() => _coDriverState();
}

class _coDriverState extends State<coDriver> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;

        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Good", 2),
              Padding(padding: EdgeInsets.all(6)),
              ac("NA", 3),

            ],
          ),
        ],
      ),
    );
  }
}
var engineCnd1;
class engineCnd extends StatefulWidget {
  const engineCnd({Key? key}) : super(key: key);

  @override
  State<engineCnd> createState() => _engineCndState();
}

class _engineCndState extends State<engineCnd> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          engineCnd1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("No Engine", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Average", 2),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Good", 3),
              Padding(padding: EdgeInsets.all(6)),
              ac("Bad", 4),
                Padding(padding: EdgeInsets.all(6)),
              ac("Excellent", 5),
            ],
          ),
        ],
      ),
    );
  }
}
var engineOil1;
class engineOil extends StatefulWidget {
  const engineOil({Key? key}) : super(key: key);

  @override
  State<engineOil> createState() => _engineOilState();
}

class _engineOilState extends State<engineOil> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          engineOil1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var radCon1;
class radCon extends StatefulWidget {
  const radCon({Key? key}) : super(key: key);

  @override
  State<radCon> createState() => _radConState();
}

class _radConState extends State<radCon> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          radCon1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var diesalPump1;
class diesalPump extends StatefulWidget {
  const diesalPump({Key? key}) : super(key: key);

  @override
  State<diesalPump> createState() => _diesalPumpState();
}

class _diesalPumpState extends State<diesalPump> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          diesalPump1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var Ignit1;
class Ignit extends StatefulWidget {
  const Ignit({Key? key}) : super(key: key);

  @override
  State<Ignit> createState() => _IgnitState();
}

class _IgnitState extends State<Ignit> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          Ignit1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}

var transmission1;
class transmission extends StatefulWidget {
  const transmission({Key? key}) : super(key: key);

  @override
  State<transmission> createState() => _transmissionState();
}

class _transmissionState extends State<transmission> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          transmission1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}


var transmissionc1;
class transmissionc extends StatefulWidget {
  const transmissionc({Key? key}) : super(key: key);

  @override
  State<transmissionc> createState() => _transmissioncState();
}

class _transmissioncState extends State<transmissionc> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          transmissionc1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}




var gearShift1;
class gearShift extends StatefulWidget {
  const gearShift({Key? key}) : super(key: key);

  @override
  State<gearShift> createState() => _gearShiftState();
}

class _gearShiftState extends State<gearShift> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          gearShift1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var clutch1;
class clutch extends StatefulWidget {
  const clutch({Key? key}) : super(key: key);

  @override
  State<clutch> createState() => _clutchState();
}

class _clutchState extends State<clutch> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          clutch1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}


var steeringType1;
class steeringType extends StatefulWidget {
  const steeringType({Key? key}) : super(key: key);

  @override
  State<steeringType> createState() => _steeringTypeState();
}

class _steeringTypeState extends State<steeringType> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          steeringType1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Manual", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Power", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var breakType1;
class breakType extends StatefulWidget {
  const breakType({Key? key}) : super(key: key);

  @override
  State<breakType> createState() => _breakTypeState();
}

class _breakTypeState extends State<breakType> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          breakType1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Normal", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Air", 2),
              Padding(padding: EdgeInsets.all(6)),
              ac("Hydraulic", 3),
            ],
          ),
        ],
      ),
    );
  }
}

var breaks1;
class breaks extends StatefulWidget {
  const breaks({Key? key}) : super(key: key);

  @override
  State<breaks> createState() => _breaksState();
}

class _breaksState extends State<breaks> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          breaks1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var axle1;
class axle extends StatefulWidget {
  const axle({Key? key}) : super(key: key);

  @override
  State<axle> createState() => _axleState();
}

class _axleState extends State<axle> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          axle1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("4x2", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("6x4", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("8x4", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("4x4", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("6x2", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("8x2", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("10x2", 7),
               Padding(padding: EdgeInsets.all(6)),
              dashBoard("10x4", 8),
               Padding(padding: EdgeInsets.all(6)),
              dashBoard("12x2", 9),
            ],
          )
        ],
      ),
    );
  }
}
var diffrent1;
class diffrent extends StatefulWidget {
  const diffrent({Key? key}) : super(key: key);

  @override
  State<diffrent> createState() => _diffrentState();
}

class _diffrentState extends State<diffrent> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          diffrent1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var suspension1;
class suspension extends StatefulWidget {
  const suspension({Key? key}) : super(key: key);

  @override
  State<suspension> createState() => _suspensionState();
}

class _suspensionState extends State<suspension> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          suspension1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Bad", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 3),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Very Good", 4),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 5),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Average", 6),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 7),
            ],
          )
        ],
      ),
    );
  }
}
var battery1;
class battery extends StatefulWidget {
  const battery({Key? key}) : super(key: key);

  @override
  State<battery> createState() => _batteryState();
}

class _batteryState extends State<battery> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          battery1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Satisfactory", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Discharged", 2),
],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Unplugged", 3),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 4),

            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Key Not Available", 5),
            ],
          )
        ],
      ),
    );
  }
}

var stater1;
class stater extends StatefulWidget {
  const stater({Key? key}) : super(key: key);

  @override
  State<stater> createState() => _staterState();
}

class _staterState extends State<stater> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          stater1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 3),
          ],
          ),Row(
            children: [

              Padding(padding: EdgeInsets.all(6)),
              dashBoard("None", 4),
            ],
          ),

        ],
      ),
    );
  }
}
var alternator1;
class alternator extends StatefulWidget {
  const alternator({Key? key}) : super(key: key);

  @override
  State<alternator> createState() => _alternatorState();
}

class _alternatorState extends State<alternator> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          alternator1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Good", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Bad", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Missing", 3),
              // Padding(padding: EdgeInsets.all(6)),
              // dashBoard("None", 4),
            ],
          ),Row(
            children: [
              // Padding(padding: EdgeInsets.all(6)),
              // dashBoard("Missing", 3),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("None", 4),
            ],
          ),

        ],
      ),
    );
  }
}
var tankerBody1;
class tankerBody extends StatefulWidget {
  const tankerBody({Key? key}) : super(key: key);

  @override
  State<tankerBody> createState() => _tankerBodyState();
}

class _tankerBodyState extends State<tankerBody> {
  int selected=0;
  Widget dashBoard(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tankerBody1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child:Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Stainless Steel", 1),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("Mild Steel", 2),
              // Padding(padding: EdgeInsets.all(6)),
              // dashBoard("NA", 3),

            ],
          ),Row(
            children: [
              // Padding(padding: EdgeInsets.all(6)),
              // dashBoard("Mild Steel", 2),
              Padding(padding: EdgeInsets.all(6)),
              dashBoard("NA", 3),
            ],
          ),

        ],
      ),
    );
  }
}
var vehicle1;
class vehicle extends StatefulWidget {
  const vehicle({Key? key}) : super(key: key);

  @override
  State<vehicle> createState() => _vehicleState();
}

class _vehicleState extends State<vehicle> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          vehicle1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}

var forward1;
class forward extends StatefulWidget {
  const forward({Key? key}) : super(key: key);

  @override
  State<forward> createState() => _forwardState();
}

class _forwardState extends State<forward> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          forward1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var backward1;
class backward extends StatefulWidget {
  const backward({Key? key}) : super(key: key);

  @override
  State<backward> createState() => _backwardState();
}

class _backwardState extends State<backward> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          backward1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var padel1;
class padel extends StatefulWidget {
  const padel({Key? key}) : super(key: key);

  @override
  State<padel> createState() => _padelState();
}

class _padelState extends State<padel> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          padel1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("No", 2),
            ],
          ),
        ],
      ),
    );
  }
}
var vehicleCondition1;
class vehicleCondition extends StatefulWidget {
  const vehicleCondition({Key? key}) : super(key: key);

  @override
  State<vehicleCondition> createState() => _vehicleConditionState();
}

class _vehicleConditionState extends State<vehicleCondition> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          vehicleCondition1=text;
        });
      },
      child:   Container(
        constraints:BoxConstraints(
          minWidth: 50, maxWidth: 400,),
        child: RichText(

          // Controls visual overflow
          overflow: TextOverflow.clip,

          // Controls how the text should be aligned horizontally
          textAlign: TextAlign.end,

          // Control the text direction
          textDirection: TextDirection.rtl,

          // Whether the text should break at soft line breaks
          softWrap: true,

          // Maximum number of lines for the text to span
          maxLines: 1,

          // The number of font pixels for each logical pixel
          textScaleFactor: 1,
          text: TextSpan(

            text: text,
            style: TextStyle(
                  color: (selected == index)? Colors.white : Colors.black,
                  )),          ),
        ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Running", 1),
            ],
          ), Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Towed(Key NA,Battery NA, Missing, Breake)", 2),
              //
            ],
          ), Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Breakdown", 3),
              Padding(padding: EdgeInsets.all(6)),
              ac("Need Break", 4),
            ],
          ),
        ],
      ),
    );
  }
}
var insuarance1;
class insuarance extends StatefulWidget {
  const insuarance({Key? key}) : super(key: key);

  @override
  State<insuarance> createState() => _insuaranceState();
}

class _insuaranceState extends State<insuarance> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          insuarance1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("Company", 1),
              Padding(padding: EdgeInsets.all(6)),
              ac("Third Party", 2),
            ],
          ), Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              ac("None", 3),
              Padding(padding: EdgeInsets.all(6)),
              ac("Need Break", 4),
            ],
          ),
        ],
      ),
    );
  }
}
var hypo1;
class hypo extends StatefulWidget {
  const hypo({Key? key}) : super(key: key);

  @override
  State<hypo> createState() => _hypoState();
}

class _hypoState extends State<hypo> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          hypo1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(6)),
          ac("Yes", 1),
          Padding(padding: EdgeInsets.all(6)),
          ac("No", 2),

        ],
      ),
    );

    }
  // void hypothetic (){
  //   if ( selected == 1){
  // print("index 1 is selected");    }
  //   else {}}

  }


var hpaBank1;
class hpaBank extends StatefulWidget {
  const hpaBank({Key? key}) : super(key: key);

  @override
  State<hpaBank> createState() => _hpaBankState();
}

class _hpaBankState extends State<hpaBank> {
  int selected=0;
  Widget ac(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          hpaBank1=text;
        });
      },
      child:   Container(
        constraints:BoxConstraints(
      minWidth: 100, maxWidth: 550,),
        child: RichText(
        // Controls visual overflow
        overflow: TextOverflow.visible,

        // Controls how the text should be aligned horizontally
        textAlign: TextAlign.end,

        // Control the text direction
        textDirection: TextDirection.rtl,

        // Whether the text should break at soft line breaks
        softWrap: true,

        // Maximum number of lines for the text to span
        maxLines: 1,

        // The number of font pixels for each logical pixel
        textScaleFactor: 1,
        text: TextSpan(
          text: text,
          style: TextStyle(
            color: (selected == index)? Colors.white : Colors.black,

          ),
        ),
    ),
      ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children : [
          Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Mahindra & Mahindra Finance Service LTD", 1),
            ]
          ),          Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("AU Small Finance Bank LTD", 2),
            ]
          ),    Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("HDB Finance Service LTD", 3),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Ess Kay Fincarp LTD", 4),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Yes Bank LTD", 5),
              Padding(padding: EdgeInsets.all(6)),
              ac("HDFC Bank LTD", 6),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("TATA Motors Finance Solution LTD", 7),

            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Equita Small Finance Bank", 8),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Magma Fincarp LTD", 9),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Kotak Mahindra Bank LTD", 10),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("HERO Fincorp LTD", 11),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("TATA Capital Finance Bank LTD", 12),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Fortune Integrated Assets Finance LTD", 13),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Adani Capital Private LTD", 14),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Manapurram Finance", 15),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Hinduja Leyland Finance LTD", 16),
            ]
          ),Row(
            children : [
              Padding(padding: EdgeInsets.all(6)),
              ac("Vastu Finserve India Private LTD", 17),
            ]
          ),
        ],
      )
    );
  }
}
var tyre11;
class tyre1 extends StatefulWidget {
  const tyre1({Key? key}) : super(key: key);

  @override
  State<tyre1> createState() => _tyre1State();
}

class _tyre1State extends State<tyre1> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        print("c,;l");
        setState(() {
          selected= index;
          tyre11=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
}
}
var tyre21;
class tyre2 extends StatefulWidget {
  const tyre2({Key? key}) : super(key: key);

  @override
  State<tyre2> createState() => _tyre2State();
}

class _tyre2State extends State<tyre2> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        print("dfg"+text);
        setState(() {

          selected= index;

          tyre21=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre31;
class tyre3 extends StatefulWidget {
  const tyre3({Key? key}) : super(key: key);

  @override
  State<tyre3> createState() => _tyre3State();
}

class _tyre3State extends State<tyre3> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre31=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre41;
class tyre4 extends StatefulWidget {
  const tyre4({Key? key}) : super(key: key);

  @override
  State<tyre4> createState() => _tyre4State();
}

class _tyre4State extends State<tyre4> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre41=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre51;
class tyre5 extends StatefulWidget {
  const tyre5({Key? key}) : super(key: key);

  @override
  State<tyre5> createState() => _tyre5State();
}

class _tyre5State extends State<tyre5> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre51=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre61;
class tyre6 extends StatefulWidget {
  const tyre6({Key? key}) : super(key: key);

  @override
  State<tyre6> createState() => _tyre6State();
}

class _tyre6State extends State<tyre6> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre61=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre71;
class tyre7 extends StatefulWidget {
  const tyre7({Key? key}) : super(key: key);

  @override
  State<tyre7> createState() => _tyre7State();
}

class _tyre7State extends State<tyre7> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre71=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre81;
class tyre8 extends StatefulWidget {
  const tyre8({Key? key}) : super(key: key);

  @override
  State<tyre8> createState() => _tyre8State();
}

class _tyre8State extends State<tyre8> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre81=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre91;
class tyre9 extends StatefulWidget {
  const tyre9({Key? key}) : super(key: key);

  @override
  State<tyre9> createState() => _tyre9State();
}

class _tyre9State extends State<tyre9> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre91=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
var tyre101;
class tyre10 extends StatefulWidget {
  const tyre10({Key? key}) : super(key: key);

  @override
  State<tyre10> createState() => _tyre10State();
}

class _tyre10State extends State<tyre10> {
  int selected=0;
  Widget tyre1(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          tyre101=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("1%", 1),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("25%", 2),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("50%", 3),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              tyre1("75%", 4),
              Padding(padding: EdgeInsets.all(6)),
              tyre1("90%", 5),

            ],
          ),
        ],
      ),
    );
  }
}
