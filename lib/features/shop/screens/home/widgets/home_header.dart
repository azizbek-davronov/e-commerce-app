import 'package:e_commerce_app/common/widgets/circular_container.dart';
import 'package:e_commerce_app/common/widgets/curved_edges.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: Container(
        color: BrandColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -DeviceUtility.getScreenHeight(context) / 3 +
                  DeviceUtility.getScreenWidth(context) / 4,
              right: -DeviceUtility.getScreenWidth(context) / 2,
              child: CircularContainer(
                radius: DeviceUtility.getScreenWidth(context),
                color: BrandColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: -DeviceUtility.getScreenHeight(context) / 3 +
                  DeviceUtility.getScreenWidth(context),
              right: -DeviceUtility.getScreenWidth(context) / 1.5,
              child: CircularContainer(
                radius: DeviceUtility.getScreenWidth(context),
                color: BrandColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}