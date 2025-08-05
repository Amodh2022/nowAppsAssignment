import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../sqflite/sql_helper.dart';

class CheckInStepController extends StateNotifier<int> {
  CheckInStepController() : super(0) {
    _init();
  }

  Future<void> _init() async {
    final savedStep = await SqlHelper.getCheckInStep();
    if (savedStep != null) {
      state = savedStep;
    }
  }

  Future<void> updateStep(int newStep) async {
    state = newStep;
    await SqlHelper.saveCheckInStep(newStep);
  }
}
final checkInStepProvider =
StateNotifierProvider<CheckInStepController, int>((ref) {
  return CheckInStepController();
});
