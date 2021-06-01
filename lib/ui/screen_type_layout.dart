import 'package:flutter/material.dart';
import 'package:mike_responsive/enums/device_screen_type.dart';
import 'package:mike_responsive/ui/base_widget.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({Key key, this.mobile, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidgetBuilder(
      basebuilder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          if (tablet != null) {
            return tablet;
          }
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.DeskTop) {
          if (desktop != null) {
            return desktop;
          }
        }

        return mobile;
      },
    );
  }
}
