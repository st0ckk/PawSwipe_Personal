import '/flutter_flow/flutter_flow_util.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import '/index.dart';
import 'community_feed_screen_widget.dart' show CommunityFeedScreenWidget;
import 'package:flutter/material.dart';

class CommunityFeedScreenModel
    extends FlutterFlowModel<CommunityFeedScreenWidget> {
  ///  Local state fields for this page.

  String selectedCategory = '';

  bool isLiked = false;

  String? searchText;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menuModel.dispose();
  }
}
