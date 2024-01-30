import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const align1 = Alignment.topLeft;
const align2 = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: align1,
          end: align2,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
// const GradientContainer( {super.key, required this.colors});

//  final List<Color> colors;
 
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: align1,
//           end: align2,
//         ),
//       ),
//       child: const Styletext("Dice"),
//     );
//   }
// }
