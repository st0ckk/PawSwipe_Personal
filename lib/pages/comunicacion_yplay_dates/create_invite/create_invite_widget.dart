import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'create_invite_model.dart';
export 'create_invite_model.dart';

class CreateInviteWidget extends StatefulWidget {
  const CreateInviteWidget({super.key});

  @override
  State<CreateInviteWidget> createState() => _CreateInviteWidgetState();
}

class _CreateInviteWidgetState extends State<CreateInviteWidget> {
  late CreateInviteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateInviteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
