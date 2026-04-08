import '/flutter_flow/flutter_flow_util.dart';
import 'add_location_sheet_widget.dart' show AddLocationSheetWidget;
import 'package:flutter/material.dart';

class AddLocationSheetModel extends FlutterFlowModel<AddLocationSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for LocationName widget.
  FocusNode? locationNameFocusNode;
  TextEditingController? locationNameTextController;
  String? Function(BuildContext, String?)? locationNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationNameFocusNode?.dispose();
    locationNameTextController?.dispose();
  }
}
