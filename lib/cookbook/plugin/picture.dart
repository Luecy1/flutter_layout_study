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

  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('camera')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          await _initializeControllerFuture;
          final path
        },
      ),
    );
  }
}
