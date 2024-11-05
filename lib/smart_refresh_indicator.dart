import 'package:flutter/material.dart';

class SmartRefreshIndicator extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final Color? backgroundColor;
  final Color? indicatorColor;
  const SmartRefreshIndicator({super.key, required this.child, required this.onRefresh, this.backgroundColor, this.indicatorColor});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: backgroundColor ?? Colors.white,
      color: indicatorColor ?? Colors.red,
      onRefresh: onRefresh,
      child: child, // The child widget itself will handle scrolling
    );
  }
}
