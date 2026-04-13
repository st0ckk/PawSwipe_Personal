import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import 'privacy_settings_widget.dart' show PrivacySettingsWidget;
import 'package:flutter/material.dart';

class PrivacySettingsModel extends FlutterFlowModel<PrivacySettingsWidget> {
  ///  Local state fields for this page.

  bool locationVisibility = true;

  bool photoVisibility = true;

  bool profileVisibility = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in PrivacySettings widget.
  UsersRecord? userDoc;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue3;
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
