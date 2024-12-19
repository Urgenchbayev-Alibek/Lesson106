import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Details",
              style: TextStyle(
                  color: Color(0xffFD5D69),
                  decoration: TextDecoration.none,
                  fontSize: 20),
            ),
            const SizedBox(width: 15),
            SvgPicture.asset("assets/clock.svg",
                height: 10, width: 10, fit: BoxFit.cover),
            const SizedBox(width: 10),
            const Text(
              "45 min",
              style: TextStyle(
                  color: Color(0xffFFFDF9),
                  decoration: TextDecoration.none,
                  fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            SizedBox(
              width: 357,
              height: 54,
              child: Text(
                """This recipe can be adjusted based on your spice preferences. Feel free to add more vegetables or adjust the level of heat by adding chili flakes or fresh chili peppers""",
                style: TextStyle(
                  color: Color(0xffFFFDF9),
                  fontSize: 12,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}