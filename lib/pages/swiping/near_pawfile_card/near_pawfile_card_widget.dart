import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/swiping/no_more_paws/no_more_paws_widget.dart';
import '/pages/swiping/paw_card/paw_card_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'near_pawfile_card_model.dart';
export 'near_pawfile_card_model.dart';

class NearPawfileCardWidget extends StatefulWidget {
  const NearPawfileCardWidget({
    super.key,
    this.userRef,
    this.petRef,
  });

  final DocumentReference? userRef;
  final DocumentReference? petRef;

  static String routeName = 'NearPawfileCard';
  static String routePath = '/nearPawfileCard';

  @override
  State<NearPawfileCardWidget> createState() => _NearPawfileCardWidgetState();
}

class _NearPawfileCardWidgetState extends State<NearPawfileCardWidget> {
  late NearPawfileCardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearPawfileCardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xF6F1F4F8),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.1,
                decoration: BoxDecoration(
                  color: Color(0xFFFFD93D),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ProfileWidget.routeName);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                currentUserPhoto,
                                'https://firebasestorage.googleapis.com/v0/b/pawswipe-c2040.firebasestorage.app/o/imagesGen%2FImagen%20Sin%20Imagen.jpg?alt=media&token=7625610e-70fe-4a3c-a865-39a00b53f895',
                              ),
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1461),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Color(0xFF1A1461),
                                size: 24.0,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentPhoneNumber,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w300,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A1461),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: StreamBuilder<List<PawfilesRecord>>(
                  stream: queryPawfilesRecord(
                    queryBuilder: (pawfilesRecord) => pawfilesRecord.where(
                      'owner_ref',
                      isNotEqualTo: currentUserReference,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<PawfilesRecord> swipeableStackPawfilesRecordList =
                        snapshot.data!;
                    if (swipeableStackPawfilesRecordList.isEmpty) {
                      return Center(
                        child: NoMorePawsWidget(),
                      );
                    }

                    return FlutterFlowSwipeableStack(
                      onSwipeFn: (swipeableStackIndex) {},
                      onLeftSwipe: (swipeableStackIndex) async {
                        final swipeableStackPawfilesRecord =
                            swipeableStackPawfilesRecordList[
                                swipeableStackIndex];

                        await SwipesRecord.collection
                            .doc()
                            .set(createSwipesRecordData(
                              userRef: currentUserReference,
                              petRef: swipeableStackPawfilesRecordList[
                                      swipeableStackIndex]
                                  .reference,
                              action: false,
                            ));
                        await actions.createSwipeIfNotExists(
                          currentUserReference!,
                          widget.petRef!,
                          false,
                        );
                      },
                      onRightSwipe: (swipeableStackIndex) async {
                        final swipeableStackPawfilesRecord =
                            swipeableStackPawfilesRecordList[
                                swipeableStackIndex];
                        await actions.createSwipeIfNotExists(
                          currentUserReference!,
                          widget.petRef!,
                          false,
                        );
                        _model.isMatch = await actions.checkForMatch(
                          swipeableStackPawfilesRecordList[swipeableStackIndex]
                              .reference,
                        );
                        if (_model.isMatch == true) {
                          context.pushNamed(
                            MatchWidget.routeName,
                            queryParameters: {
                              'matchedDog': serializeParam(
                                swipeableStackPawfilesRecordList[
                                        swipeableStackIndex]
                                    .reference,
                                ParamType.DocumentReference,
                              ),
                              'fromUser': serializeParam(
                                currentUserReference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                              ),
                            },
                          );
                        }

                        safeSetState(() {});
                      },
                      onUpSwipe: (swipeableStackIndex) {},
                      onDownSwipe: (swipeableStackIndex) {},
                      itemBuilder: (context, swipeableStackIndex) {
                        final swipeableStackPawfilesRecord =
                            swipeableStackPawfilesRecordList[
                                swipeableStackIndex];
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.pawCardModels.getModel(
                                    swipeableStackPawfilesRecord.reference.id,
                                    swipeableStackIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: PawCardWidget(
                                    key: Key(
                                      'Keyl8p_${swipeableStackPawfilesRecord.reference.id}',
                                    ),
                                    pawItem: swipeableStackPawfilesRecord,
                                    onSwipeRight: () async {
                                      _model.swipeableStackController
                                          .swipeRight();
                                    },
                                    onSwipeLeft: () async {
                                      _model.swipeableStackController
                                          .swipeLeft();
                                    },
                                    onUndo: () async {
                                      _model.swipeableStackController
                                          .swipeRight();
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: swipeableStackPawfilesRecordList.length,
                      controller: _model.swipeableStackController,
                      loop: true,
                      cardDisplayCount: 1,
                      scale: 0.9,
                      allowedSwipeDirection:
                          AllowedSwipeDirection.symmetric(horizontal: true),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: Color(0xFFFFD730),
                          icon: Icon(
                            Icons.home,
                            color: Color(0xFF1A1461),
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
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
                            context
                                .pushNamed(CommunityFeedScreenWidget.routeName);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
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
                            context
                                .pushNamed(ActiveMatchesChatWidget.routeName);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
