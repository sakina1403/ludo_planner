import 'package:flutter/material.dart';  
  
  class BlinkingWidget extends StatefulWidget {
    Widget widget;
    BlinkingWidget(this.widget);
    @override
    _BlinkingWidgetState createState() => _BlinkingWidgetState();
  }

  class _BlinkingWidgetState extends State<BlinkingWidget>
      with SingleTickerProviderStateMixin {
    AnimationController _animationController;

    @override
    void initState() {
      _animationController =
          new AnimationController(vsync: this, duration: Duration(milliseconds: 500));
      _animationController.repeat();
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return FadeTransition(
        opacity: _animationController,
        child: widget.widget,
      );
    }

    @override
    void dispose() {
      _animationController.dispose();
      super.dispose();
    }
  }