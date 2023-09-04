import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:flutter_camera_overlay/model.dart';
import 'package:flutter_camera_overlay/overlay_shape.dart';
import 'package:kmp_ver2/kmp_ver2.dart';

class ScanKTPCameraStepScreen extends StatefulWidget {
  const ScanKTPCameraStepScreen({super.key});

  @override
  State<ScanKTPCameraStepScreen> createState() =>
      _ScanKTPCameraStepScreenState();
}

class _ScanKTPCameraStepScreenState extends State<ScanKTPCameraStepScreen> {
  int tab = 0;
  bool isLoading = false;
  bool onCapture = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CameraDescription>>(
        future: availableCameras(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data == null) {
              return const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'No camera found',
                    style: TextStyle(color: Colors.black),
                  ));
            }
            return CameraOverlayTogo(
                camera: snapshot.data![0],
                model: CardOverlay.byFormat(OverlayFormat.cardID3),
                onCapture: (XFile file, CameraController controller) {
                  showDialog(
                    context: context,
                    barrierColor: Colors.black,
                    builder: (context) {
                      CardOverlay overlay =
                          CardOverlay.byFormat(OverlayFormat.cardID3);
                      return StatefulBuilder(builder: (context, _satset) {
                        return AlertDialog(
                            actionsAlignment: MainAxisAlignment.center,
                            backgroundColor: Colors.black,
                            title: const Text('Capture',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center),
                            actions: [
                              OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      isLoading = false;
                                    });

                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Icon(Icons.close)),
                              isLoading
                                  ? OutlinedButton(
                                      onPressed: () {},
                                      child: const SizedBox(
                                          width: 14,
                                          height: 14,
                                          child: CircularProgressIndicator(
                                              strokeWidth: 2.0)))
                                  : OutlinedButton(
                                      onPressed: () async {
                                        controller.pausePreview();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ConfirmationKTPStepScreen(),
                                            ));

                                        _satset(() {
                                          isLoading = true;
                                        });

                                        _satset(() {
                                          isLoading = false;
                                        });
                                      },
                                      child: const Icon(Icons.check)),
                            ],
                            content: SizedBox(
                                width: double.infinity,
                                child: AspectRatio(
                                  aspectRatio: overlay.ratio ?? 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      alignment: FractionalOffset.center,
                                      image: FileImage(
                                        File(file.path),
                                        scale: 1.5,
                                      ),
                                    )),
                                  ),
                                )));
                      });
                    },
                  );
                },
                info:
                    'Posisikan Kartu KTP Anda berada di dalam kotak dan pastikan agar gambar tidak blur',
                label: 'Scanning Foto KTP');
          } else {
            return const Align(
                alignment: Alignment.center,
                child: Text(
                  'Fetching cameras',
                  style: TextStyle(color: Colors.black),
                ));
          }
        },
      ),
    );
  }
}

class CameraOverlayTogo extends StatefulWidget {
  final CameraDescription camera;
  final void Function(XFile, CameraController) onCapture;
  final OverlayModel model;
  final String label;
  final String info;

  const CameraOverlayTogo({
    key,
    required this.camera,
    required this.label,
    required this.model,
    required this.info,
    required this.onCapture,
  });

  @override
  State<CameraOverlayTogo> createState() => _CameraOverlayTogoState();
}

class _CameraOverlayTogoState extends State<CameraOverlayTogo> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    // controller = widget.controller;
    controller = CameraController(widget.camera, ResolutionPreset.max,
        enableAudio: false);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text('Kamera tidak bisa mendapatkan izin di ponsel Anda'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 40),
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  'Selanjutnya',
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: Colors.white, letterSpacing: 3),
                ),
              ),
            )
          ],
        ),
      );
    }

    controller.setFlashMode(FlashMode.off);
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        CameraPreview(controller),
        OverlayShape(widget.model),
        if (widget.label != null || widget.info != null)
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.label != null)
                      Text(
                        widget.label,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    if (widget.info != null)
                      Flexible(
                        child: Text(
                          widget.info,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                  ],
                )),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Material(
              color: Colors.transparent,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.all(25),
                  child: IconButton(
                    enableFeedback: true,
                    color: Colors.white,
                    onPressed: () async {
                      for (int i = 10; i > 0; i--) {
                        await HapticFeedback.vibrate();
                      }

                      controller.pausePreview();
                      // controller.pauseVideoRecording();
                      // controller.dispose();

                      XFile file = await controller.takePicture();
                      widget.onCapture(file, controller);
                    },
                    icon: const Icon(
                      Icons.camera,
                    ),
                    iconSize: 72,
                  ))),
        )
      ],
    );
  }
}
