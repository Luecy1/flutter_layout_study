import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final camera = await availableCameras();
  final firstCamera = camera.first;

  runApp(MaterialApp(
    home: _CameraPage(),
  ));
}

class _CameraPage extends StatefulWidget {
  final CameraDescription camera;

  const _CameraPage({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  __CameraPageState createState() => __CameraPageState();
}

class __CameraPageState extends State<_CameraPage> {
  CameraController _controller;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
