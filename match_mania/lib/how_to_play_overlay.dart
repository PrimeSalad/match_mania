// how_to_play_overlay.dart
import 'package:flutter/material.dart';

class HowToPlayOverlay extends StatelessWidget {
  const HowToPlayOverlay({super.key, required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // 🖤 Semi-transparent dark background
        Positioned.fill(
          child: Container(
            color: Colors.black54,
          ),
        ),

        // 📜 Popup with how.png
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // main how.png image
              Image.asset(
                'assets/images/how.png',
                width: 330,
                fit: BoxFit.contain,
              ),

              // ❌ X button
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: onClose,
                  child: Image.asset(
                    'assets/images/x.png',
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
