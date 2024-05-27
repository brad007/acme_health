// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class AcmeHealthButton extends StatelessWidget {
  AcmeHealthButton({
    required this.child,
    required this.onPressed,
    this.color = const None(),
    this.shape = const None(),
    this.padding = const None(),
    this.enabled = true,
    this.filled = true,
    super.key,
  });

  final Widget child;
  final VoidCallback onPressed;

  final bool enabled;
  final bool filled;

  Option<Color> color = const None();

  Option<RoundedRectangleBorder> shape;

  Option<EdgeInsetsGeometry> padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      padding: padding.fold(
        () => const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        (t) => t,
      ),
      shape: shape.fold(
        () => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        (t) => t,
      ),
      color: _getColor(context),
      onPressed: onPressed,
      textColor: filled ? Colors.white : Theme.of(context).primaryColor,
      child: child,
    );
  }

  Color _getColor(BuildContext context) {
    return !enabled
        ? Theme.of(context).primaryColor.withOpacity(0.4)
        : filled
            ? color.fold(
                () => Theme.of(context).primaryColor,
                (t) => t,
              )
            : Colors.white;
  }
}
