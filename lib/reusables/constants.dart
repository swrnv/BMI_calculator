import 'package:flutter/material.dart';

const Color kactiveCardColor = Colors.white;
const Color kinactiveCardColor = Colors.white54;
const TextStyle klabelTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
);
const TextStyle kboldTextStyle =
    TextStyle(fontWeight: FontWeight.w900, fontSize: 50);
const kTitleTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const kresultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
const kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);
const kResultExplain = TextStyle(
  fontSize: 22,
);

class BottomButton extends StatelessWidget {
  BottomButton({@required this.ontap, @required this.buttonTitle});

  final Function ontap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 35, color: Colors.white),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Colors.blue,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPressed,
    );
  }
}
