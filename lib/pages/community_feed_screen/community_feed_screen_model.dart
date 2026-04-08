import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import '/index.dart';
import 'community_feed_screen_widget.dart' show CommunityFeedScreenWidget;
import 'package:flutter/material.dart';

class CommunityFeedScreenModel
    extends FlutterFlowModel<CommunityFeedScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Searchtipsorbreeds widget.
  FocusNode? searchtipsorbreedsFocusNode;
  TextEditingController? searchtipsorbreedsTextController;
  String? Function(BuildContext, String?)?
      searchtipsorbreedsTextControllerValidator;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    searchtipsorbreedsFocusNode?.dispose();
    searchtipsorbreedsTextController?.dispose();

    menuModel.dispose();
  }
}
