import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import '/index.dart';
import 'my_pawfiles_widget.dart' show MyPawfilesWidget;
import 'package:flutter/material.dart';

class MyPawfilesModel extends FlutterFlowModel<MyPawfilesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
