import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/swiping/paw_card/paw_card_widget.dart';
import '/index.dart';
import 'near_pawfile_card_widget.dart' show NearPawfileCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class NearPawfileCardModel extends FlutterFlowModel<NearPawfileCardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Stores action output result for [Firestore Query - Query a collection] action in SwipeableStack widget.
  SwipesRecord? matched;
  // Models for PawCard dynamic component.
  late FlutterFlowDynamicModels<PawCardModel> pawCardModels;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    pawCardModels = FlutterFlowDynamicModels(() => PawCardModel());
  }

  @override
  void dispose() {
    pawCardModels.dispose();
  }
}
