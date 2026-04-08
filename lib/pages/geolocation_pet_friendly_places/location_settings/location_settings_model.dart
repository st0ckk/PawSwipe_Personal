import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import '/index.dart';
import 'location_settings_widget.dart' show LocationSettingsWidget;
import 'package:flutter/material.dart';

class LocationSettingsModel extends FlutterFlowModel<LocationSettingsWidget> {
  ///  Local state fields for this page.

  int? sliderValue = 10;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
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
