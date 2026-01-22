import 'package:flutter/material.dart';
/// Widget that adds background image and pattern to the screen.
/// I think its a hardcode
class BackgroundImage extends StatelessWidget {
  final Widget child;

  const BackgroundImage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background/FlutterTestTask.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/FlutterTestTask_Pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
