import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  final Widget child;
  const NeuButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            boxShadow: [
              // * Darker shadow on bottom
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: const Offset(5, 5),
              ),
              // * Lighter shadow on top
              const BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(-5, -5),
              ),
            ],
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
