import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFFD730),
              icon: Icon(
                Icons.home,
                color: Color(0xFF1A1461),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(ProfileWidget.routeName);
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFFD730),
              icon: FaIcon(
                FontAwesomeIcons.paw,
                color: Color(0xFF1A1461),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  PetfriendlyPlacesWidget.routeName,
                  extra: <String, dynamic>{
                    '__transition_info__': TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFFD730),
              icon: Icon(
                Icons.location_on,
                color: Color(0xFF1A1461),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(LocSelectWidget.routeName);
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFFD730),
              icon: Icon(
                Icons.textsms_sharp,
                color: Color(0xFF1A1461),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(ActiveMatchesChatWidget.routeName);
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Color(0xFFFFD730),
              icon: Icon(
                Icons.person,
                color: Color(0xFF1A1461),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(ProfileWidget.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
