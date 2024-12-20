import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeItem(),
    );
  }
}

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C0F0D),
      body: Center(
        child: Container(
          width: 358,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Chicken Curry image
              Positioned(
                left: 0,
                top: -5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: const Image(
                    image: AssetImage("assets/chicken-curry.png"),
                    width: 153,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Heart icon over image
              Positioned(
                left: 115, // Adjust as needed
                top: 3,  // Adjust as needed
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                    color: Color(0xffFD5D69),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/heart.svg",
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
              ),
              // Details container
              Positioned(
                right: -5,
                top: 10,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 211,
                  height: 122,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Chicken Curry",
                        style: TextStyle(
                          color: Color(0xff3E2823),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Savor the aromatic Chicken Curry—a rich blend of spices...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xff3E2823),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "By Chef Josh Ryan",
                        style: TextStyle(
                          color: Color(0xffFD5D69),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SvgPicture.asset("assets/clock1.svg", width: 12, height: 12),
                          const SizedBox(width: 5),
                          const Text(
                            "45min",
                            style: TextStyle(
                              color: Color(0xffEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 29),
                          const Text(
                            "Easy",
                            style: TextStyle(color: Color(0xffEC888D)),
                          ),
                          const SizedBox(width: 3),
                          SvgPicture.asset(
                            "assets/diagram.svg",
                            width: 13,
                            height: 10,
                          ),
                          const SizedBox(width: 35),
                          const Text(
                            "4",
                            style: TextStyle(
                              color: Color(0xffEC888D),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset("assets/star.svg", width: 10, height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
