import 'package:flutter/material.dart';

/// A widget that provides a customizable refresh indicator.
///
/// The [SmartRefreshIndicator] widget wraps its [child] with a [RefreshIndicator],
/// allowing users to perform a pull-to-refresh action. This widget provides
/// options to customize the background and indicator colors.
///
/// ## Parameters
///
/// - [child]: The widget that will be wrapped with the refresh indicator. This is
///   typically a scrollable widget such as a [ListView] or [GridView].
/// - [onRefresh]: A callback function that is triggered when the user performs
///   a pull-to-refresh action. This function should return a [Future<void>].
/// - [backgroundColor]: An optional parameter to set the background color of
///   the refresh indicator. If not provided, it defaults to `Colors.white`.
/// - [indicatorColor]: An optional parameter to set the color of the refresh
///   indicator. If not provided, it defaults to `Colors.red`.
/// ## Notes
///
/// The [SmartRefreshIndicator] requires a scrollable widget as its [child].
/// The [child] will handle the scrolling functionality while the [SmartRefreshIndicator]
/// handles the refresh action.
class SmartRefreshIndicator extends StatelessWidget {
  /// The widget that will be wrapped with the refresh indicator.
  final Widget child;

  /// A callback function that is triggered when the user performs a pull-to-refresh action.
  final Future<void> Function() onRefresh;

  /// An optional parameter to set the background color of the refresh indicator.
  final Color? backgroundColor;

  /// An optional parameter to set the color of the refresh indicator.
  final Color? indicatorColor;

  /// Creates a [SmartRefreshIndicator] widget.
  ///
  /// The [child] and [onRefresh] parameters are required. The [backgroundColor]
  /// and [indicatorColor] parameters are optional.
  const SmartRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
    this.backgroundColor,
    this.indicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: backgroundColor ?? Colors.white,
      color: indicatorColor ?? Colors.red,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
