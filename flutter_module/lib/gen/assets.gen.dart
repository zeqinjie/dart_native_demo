/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/chat_detail.json
  String get chatDetail => 'assets/json/chat_detail.json';

  /// File path: assets/json/json14.json
  String get json14 => 'assets/json/json14.json';

  /// File path: assets/json/json16.json
  String get json16 => 'assets/json/json16.json';

  /// File path: assets/json/large_file.json
  String get largeFile => 'assets/json/large_file.json';
}

class $AssetsPicGen {
  const $AssetsPicGen();

  /// File path: assets/pic/location_marker.png
  AssetGenImage get locationMarker =>
      const AssetGenImage('assets/pic/location_marker.png');
}

class Assets {
  Assets._();

  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsPicGen pic = $AssetsPicGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
