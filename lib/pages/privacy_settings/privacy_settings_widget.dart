import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/multiperfil_onboarding/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_settings_model.dart';
export 'privacy_settings_model.dart';

class PrivacySettingsWidget extends StatefulWidget {
  const PrivacySettingsWidget({super.key});

  static String routeName = 'PrivacySettings';
  static String routePath = '/privacySettings';

  @override
  State<PrivacySettingsWidget> createState() => _PrivacySettingsWidgetState();
}

class _PrivacySettingsWidgetState extends State<PrivacySettingsWidget> {
  late PrivacySettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacySettingsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userDoc = await UsersRecord.getDocumentOnce(currentUserReference!);
      _model.locationVisibility = _model.userDoc!.locationVisibility;
      _model.photoVisibility =
          valueOrDefault<bool>(currentUserDocument?.photoVisibility, false);
      _model.profileVisibility =
          valueOrDefault<bool>(currentUserDocument?.profileVisibility, false);
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1A1461),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 25.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        title: Text(
          'Privacy settings',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                font: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
                color: Color(0xFF14181B),
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
              ),
        ),
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          background: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/paw_(2).png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: Text(
                      'Control who can see your personal information and how it is shared.\n',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFFFFD730),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 15.0, 12.0),
            child: Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue1 ??=
                    _model.locationVisibility,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchListTileValue1 = newValue);

                  if (!newValue) {
                    _model.locationVisibility = false;
                    safeSetState(() {});
                  }
                },
                title: Text(
                  'Location Visibility',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        color: Color(0xFF1A1461),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        lineHeight: 2.0,
                      ),
                ),
                subtitle: Text(
                  'Allow others to see my exact location.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF8B97A2),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                tileColor: Colors.white,
                activeColor: Color(0xFF1A1461),
                activeTrackColor: Color(0x4C4B39EF),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 12.0),
            child: Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue2 ??= _model.photoVisibility,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchListTileValue2 = newValue);
                  if (newValue) {
                    _model.photoVisibility = _model.switchListTileValue2!;
                    safeSetState(() {});
                  }
                },
                title: Text(
                  'Photo Visibility',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        color: Color(0xFF1A1461),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        lineHeight: 2.0,
                      ),
                ),
                subtitle: Text(
                  'Allow others to see my photos.\n',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF8B97A2),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                tileColor: Colors.white,
                activeColor: Color(0xFF1A1461),
                activeTrackColor: Color(0x4C4B39EF),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue3 ??= _model.profileVisibility,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchListTileValue3 = newValue);

                  if (!newValue) {
                    _model.profileVisibility = false;
                    safeSetState(() {});
                  }
                },
                title: Text(
                  'Profile Visibility',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        color: Color(0xFF1A1461),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        lineHeight: 2.0,
                      ),
                ),
                subtitle: Text(
                  'Allow my profile to be visible to others',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF8B97A2),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                tileColor: Colors.white,
                activeColor: Color(0xFF1A1461),
                activeTrackColor: Color(0x4C4B39EF),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await currentUserReference!.update(createUsersRecordData(
                  locationVisibility: _model.locationVisibility,
                  profileVisibility: _model.profileVisibility,
                  photoVisibility: _model.photoVisibility,
                ));
                context.safePop();
              },
              text: 'Save Changes',
              options: FFButtonOptions(
                width: 190.0,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFFFD730),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                      color: Color(0xFF1A1461),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 130.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.menuModel,
              updateCallback: () => safeSetState(() {}),
              child: MenuWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
