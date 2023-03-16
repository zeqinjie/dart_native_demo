import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/extension/string_ext.dart';
import 'package:flutter_module/gen/assets.gen.dart';
import 'package:flutter_module/tool/log.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

class MapState {
  ///记录当前显示按钮 index
  int selectedBtnIndex = -1;

  ///默认目的地的纬度
  double lat = 25.067207;

  ///默认目的地的经度
  double lng = 121.5266216;

  ///默认目的地地址名
  String address = "中國臺灣省臺北市中山區";

  ///大头针列表
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
}

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final mapState = MapState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Map Demo'),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildGoogleMapView(
              context,
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    addLocationMarker();
  }

  /// 谷歌地图
  Widget buildGoogleMapView(
    BuildContext context,
  ) {
    return AbsorbPointer(
      absorbing: true,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            mapState.lat,
            mapState.lng,
          ),
          zoom: 15,
        ),
        minMaxZoomPreference: const MinMaxZoomPreference(6, 22),
        markers: Set<Marker>.of(mapState.markers.values),
        // 地图显示模式
        mapType: MapType.normal,
        // 是否显示指南针(旋转时才出现)
        compassEnabled: false,
        // 是否google map 应用按钮
        myLocationButtonEnabled: false,
        // 设置地图是否可以通过手势倾斜（3D效果）
        tiltGesturesEnabled: false,
        // 是否显示交通
        trafficEnabled: false,
        // 是否显示3d视图
        buildingsEnabled: false,
        // 地图是否可以旋转
        rotateGesturesEnabled: false,
        // 是否支持手势缩放
        zoomGesturesEnabled: true,
        // 是否显示加减
        zoomControlsEnabled: true,
        // 是否可以滚动
        scrollGesturesEnabled: true,
      ),
    );
  }

  ///根据路径返回图片
  Future<ui.Image> getImageFromPath(String asset, {width, height}) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width, targetHeight: height);
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }

  ///添加建案定位大头针
  Future<void> addLocationMarker() async {
    MarkerId markerId = const MarkerId("marker-location");
    try {
      final icon = await createBitmapImageFromAsset(
        Assets.pic.locationMarker.path,
        const Size(64, 64),
      );
      TWLog('marker ====> $icon');
      var marker = Marker(
        markerId: markerId,
        position: LatLng(mapState.lat, mapState.lng),
        icon: icon,
      );

      setState(() {
        mapState.markers[markerId] = marker;
      });
    } catch (e) {
      // TWLog('error ====> $e');
    }
  }

  /// create from byte
  Future<BitmapDescriptor> createBitmapImageFromBytes(
    String imageName,
    Size size,
  ) async {
    TWLog('imageName ===> $imageName');
    try {
      final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
      final Canvas canvas = Canvas(pictureRecorder);
      ui.Image locationImage = await getImageFromPath(imageName);
      paintImage(
          canvas: canvas,
          image: locationImage,
          rect: Rect.fromLTRB(
            0,
            0,
            size.width,
            size.height,
          ),
          fit: BoxFit.fill);

      final img = await pictureRecorder.endRecording().toImage(
            size.width.toInt(),
            size.height.toInt(),
          );
      final data = await img.toByteData(format: ui.ImageByteFormat.png);
      final Uint8List uint8List = data!.buffer.asUint8List();
      return BitmapDescriptor.fromBytes(uint8List);
    } catch (e) {
      TWLog('Error createBitmapImageFromBytes $e');
      rethrow;
    }
  }

  /// create from asset
  Future<BitmapDescriptor> createBitmapImageFromAsset(
    String imageName,
    Size size,
  ) async {
    TWLog('imageName ===> $imageName');
    try {
      final icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: size),
        imageName,
      );
      return icon;
    } catch (e) {
      TWLog('Error createBitmapImageFromAsset $e');
      rethrow;
    }
  }
}
