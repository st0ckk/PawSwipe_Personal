import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'match_profile_widget.dart' show MatchProfileWidget;
import 'package:flutter/material.dart';

class MatchProfileModel extends FlutterFlowModel<MatchProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Custom Action - startOrFindChat] action in Button widget.
  DocumentReference? chatRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
