import 'package:rive/rive.dart';

class RiveModel {

  final String src;
  final String artBoard;
  final String stateMachineName;
  SMIBool? status;

  RiveModel({
    required this.src,
    required this.artBoard,
    required this.stateMachineName,
    this.status,
  });

  set setStatus(SMIBool state) {
    status = state;
  }
}
