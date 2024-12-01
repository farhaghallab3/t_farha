import 'package:flutter/material.dart';
import 'package:t_farha/common/widget/custom_shape/curved_edges/curved_edge.dart';

class TCurvedWidget extends StatelessWidget {
  const TCurvedWidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCoustomCurvedEdges(),
      child: child,
    );
  }
}
