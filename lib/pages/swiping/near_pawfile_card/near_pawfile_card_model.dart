import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'near_pawfile_card_widget.dart' show NearPawfileCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class NearPawfileCardModel extends FlutterFlowModel<NearPawfileCardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
