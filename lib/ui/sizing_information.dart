import 'package:flutter/material.dart';
import 'package:mike_responsive/enums/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.deviceScreenType, this.screenSize, this.localWidgetSize});

  @override
  String toString() {
    return ' DeviceType:$deviceScreenType Screen Size $screenSize Local WidgetSize: $localWidgetSize';
  }
}
