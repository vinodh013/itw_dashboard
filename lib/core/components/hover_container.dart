import 'package:flutter/material.dart';

class HoverAnimatedContainer extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double height;
  final double width;
  final double hoverHeight;
  final double hoverWidth;
  final Duration duration;
  final EdgeInsetsGeometry? margin;

  const HoverAnimatedContainer({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    required this.hoverHeight,
    required this.hoverWidth,
     this.margin,
    this.onTap,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  _HoverAnimatedContainerState createState() => _HoverAnimatedContainerState();
}

class _HoverAnimatedContainerState extends State<HoverAnimatedContainer> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          margin: widget.margin,
          duration: widget.duration,
          curve: Curves.easeOut,
          height: _isHovering ? widget.hoverHeight : widget.height,
          width: _isHovering ? widget.hoverWidth : widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _isHovering ? Colors.white : Colors.transparent,
            boxShadow: _isHovering
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 3,
                    ),
                  ]
                : [],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
