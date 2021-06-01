# mike_responsive

Provides Architecture for Responsive flutter application.

## installation
To use this plugin, add mike_responsive as a dependecy in your pubspec.yaml file.

## usage
Use ScreenTypeLayout widget to set mobile, tablet and desktop . Use OrientationLayout to set portrait and landscape 

*Example Usage ( complete with all params ):**

```dart
 Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
  
```
