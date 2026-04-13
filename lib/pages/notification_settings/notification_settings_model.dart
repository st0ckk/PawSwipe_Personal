import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import 'notification_settings_widget.dart' show NotificationSettingsWidget;
import 'package:flutter/material.dart';

class NotificationSettingsModel
    extends FlutterFlowModel<NotificationSettingsWidget> {
  ///  Local state fields for this page.

  bool newPupMatchesEnabled = false;

  bool newMessagesEnabled = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in NotificationSettings widget.
  UsersRecord? userDoc;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
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
