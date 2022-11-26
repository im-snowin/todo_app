import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class BottomStack extends StatelessWidget {
  const BottomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 20,
                right: 20,
                left: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Add a new todo',
                  hintStyle: TextStyle(color: textGray),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
              right: 20,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(60, 60),
                elevation: 0,
              ),
              child: const Text(
                '+',
                style: TextStyle(fontSize: 40),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
