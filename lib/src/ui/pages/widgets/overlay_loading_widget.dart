import 'package:flutter/material.dart';

class OverlayLoadingWidget extends StatelessWidget {
  final bool loading;
  final Widget child;

  OverlayLoadingWidget({required this.loading, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child, // Your main content
        if (loading)
          Container(
            color: Colors.black.withOpacity(0.5), // Semi-transparent background
            child: Center(
              child: CircularProgressIndicator(), // Loading indicator
            ),
          ),
      ],
    );
  }
}
