import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/calcButton.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String equation = "0";
  String result = "0";
  String expression = "";

  double efs = 38.0;
  double rfs = 48.0;

  buttonPressed(String buttonText) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        leading: Icon(
          CupertinoIcons.settings,
          color: CupertinoColors.activeOrange,
        ),
        actions: const [
          Padding(padding: EdgeInsets.only(top: 18), child: Text("ASG")),
          SizedBox(width: 20)
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DisplayRow(result: result),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      equation,
                      style: TextStyle(fontSize: 40, color: Colors.white38),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        buttonPressed("Del");
                      },
                      icon: Icon(CupertinoIcons.delete_left)),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcButton("AC", Colors.redAccent, () => buttonPressed('AC')),
                  calcButton("%", Colors.white10, () => buttonPressed('%')),
                  calcButton("÷", Colors.white10, () => buttonPressed('÷')),
                  calcButton("×", Colors.white10, () => buttonPressed('×')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcButton('7', Colors.white24, () => buttonPressed('7')),
                  calcButton('8', Colors.white24, () => buttonPressed('8')),
                  calcButton('9', Colors.white24, () => buttonPressed('9')),
                  calcButton('-', Colors.white10, () => buttonPressed('-')),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcButton('4', Colors.white24, () => buttonPressed('4')),
                  calcButton('5', Colors.white24, () => buttonPressed('5')),
                  calcButton('6', Colors.white24, () => buttonPressed('6')),
                  calcButton('+', Colors.white10, () => buttonPressed('+')),
                ],
              ),
              const SizedBox(height: 10),
              // calculator number buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcButton('1', Colors.white24, () => buttonPressed('1')),
                  calcButton('2', Colors.white24, () => buttonPressed('2')),
                  calcButton('3', Colors.white24, () => buttonPressed('3')),
                  calcButton('=', Colors.white10, () => buttonPressed('()')),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcButton('+/-', Colors.white10, () => buttonPressed('+/-')),
                  calcButton('0', Colors.white24, () => buttonPressed('0')),
                  calcButton('.', Colors.white10, () => buttonPressed('.')),
                  calcButton('=', Colors.orange, () => buttonPressed('=')),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      )),
    );
  }
}

class DisplayRow extends StatelessWidget {
  const DisplayRow({
    super.key,
    required this.result,
  });

  final String result;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            result,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontSize: 80),
          ),
        ),
        Icon(
          Icons.more_vert,
          color: CupertinoColors.activeOrange,
          size: 30,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
