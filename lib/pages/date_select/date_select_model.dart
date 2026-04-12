import '/flutter_flow/flutter_flow_util.dart';
import 'date_select_widget.dart' show DateSelectWidget;
import 'package:flutter/material.dart';

class DateSelectModel extends FlutterFlowModel<DateSelectWidget> {
  ///  Local state fields for this component.

  DateTime? selectedDate;

  DateTime? selectedTime;

  String selectedDuration = '1 hour';

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
