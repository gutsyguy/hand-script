import 'package:tflite_flutter/tflite_flutter.dart';

class Model {
  late Interpreter _interpreter;

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset(
        'assets/models/mobilenetv2_ssd_lite_quantized_30.tflite');
    print("Model loaded successfully");
  }
}
