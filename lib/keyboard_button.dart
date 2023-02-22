import 'package:flutter/material.dart';

class KeyboardButton extends StatelessWidget {
  KeyboardButton({required this.label, required this.onTap});

  String label;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 30,
          color: Colors.transparent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(label,
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
        ),
      ),
    );
  }
}
