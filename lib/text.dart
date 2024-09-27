import 'package:flutter/material.dart';

class Textcoffee extends StatefulWidget {
  const Textcoffee({super.key});

  @override
  _TextcoffeeState createState() => _TextcoffeeState();
}

class _TextcoffeeState extends State<Textcoffee> {
  int Coffee = 1;
  int Suger = 0;
  void IncreaseCoffee() {
    setState(() {
      if(Coffee<5){
      Coffee++;
      } else{
        Coffee=1;
      }
    });
  }
void IncreaseSuger() {
    setState(() {
      if(Suger<5){
      Suger++;
      } else{
        Suger=0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text('$Coffee'),
            const Expanded(child: SizedBox(),),
              FilledButton(
              style:
              FilledButton.styleFrom(
              backgroundColor: Colors.brown[300],
              foregroundColor: Colors.white,
              ),
              onPressed: IncreaseCoffee,
              child: const Text('Coffee'),
              ),
          ],
        ),
        Row(
          children: [
            const Text('Strength: '),
            Text('$Suger'),
            const Expanded(child: SizedBox(),),
              FilledButton(
              style:
              FilledButton.styleFrom(
              backgroundColor: Colors.brown[300],
              foregroundColor: Colors.white,
              ),
              onPressed: IncreaseSuger,
              child: const Text('Suger'),
              ),
          ],
        ),
      ],
    );
  }
}
