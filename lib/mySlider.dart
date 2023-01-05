import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {

  const MySlider({Key? key,}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState ();
}
class  _MySliderState  extends State<MySlider> {
  double _currentSliderValue = 25.0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 290,
          child: Stack(
            children: [

              Container(
               //color: Colors.orange,
                child: SizedBox(
                  width: 260,
                  height: 18,
                  child: Slider(
                    inactiveColor: Colors.blue[100],
                    activeColor: Colors.white,
                    value: _currentSliderValue,
                    max:50,
                    min: 20,
                    divisions: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ),
            const Text("20", style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
              Row(
                children: const [
                  SizedBox(width: 259,),
                  Text("50", style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Text(_currentSliderValue.toStringAsPrecision(2), style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        ),


      ],
    );
  }
}
