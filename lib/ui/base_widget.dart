import 'package:flutter/material.dart';
import 'package:mike_responsive/ui/sizing_information.dart';

import 'package:mike_responsive/utils/ui_utils.dart';

class ResponsiveWidgetBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) basebuilder;

  const ResponsiveWidgetBuilder({Key key, this.basebuilder});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight));
      return basebuilder(context, sizingInformation);
    });
  }
}
